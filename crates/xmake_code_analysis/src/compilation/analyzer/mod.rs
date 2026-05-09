mod common;
mod decl;
mod doc;
mod flow;
mod infer_cache_manager;
mod lua;
mod unresolve;

use std::{
    collections::{HashMap, HashSet},
    path::PathBuf,
    sync::Arc,
};

use crate::{
    Emmyrc, FileId, InFiled, InferFailReason, WorkspaceId, db_index::DbIndex, file_path_to_uri,
    profile::Profile, vfs::read_file_with_encoding,
};
use emmylua_parser::LuaChunk;
use infer_cache_manager::InferCacheManager;
use unresolve::UnResolve;

/// Cap recursive auto-loading to avoid pathological include cycles.
const MAX_DEFERRED_LOAD_DEPTH: u32 = 8;

pub fn analyze(db: &mut DbIndex, need_analyzed_files: Vec<InFiled<LuaChunk>>, config: Arc<Emmyrc>) {
    analyze_inner(db, need_analyzed_files, config, 0);
}

fn analyze_inner(
    db: &mut DbIndex,
    need_analyzed_files: Vec<InFiled<LuaChunk>>,
    config: Arc<Emmyrc>,
    depth: u32,
) {
    if need_analyzed_files.is_empty() {
        return;
    }

    let contexts = module_analyze(db, need_analyzed_files, config.clone());

    let mut deferred_paths: HashSet<PathBuf> = HashSet::new();
    for (workspace_id, mut context) in contexts {
        let profile_log = format!("analyze workspace {}", workspace_id);
        let _p = Profile::cond_new(&profile_log, context.tree_list.len() > 1);
        run_analysis::<decl::DeclAnalysisPipeline>(db, &mut context);
        run_analysis::<doc::DocAnalysisPipeline>(db, &mut context);
        run_analysis::<flow::FlowAnalysisPipeline>(db, &mut context);
        run_analysis::<lua::LuaAnalysisPipeline>(db, &mut context);
        run_analysis::<unresolve::UnResolveAnalysisPipeline>(db, &mut context);
        deferred_paths.extend(context.deferred_loads);
    }

    if depth >= MAX_DEFERRED_LOAD_DEPTH || deferred_paths.is_empty() {
        return;
    }

    let next_batch = drain_deferred_loads(db, deferred_paths, &config);
    if !next_batch.is_empty() {
        analyze_inner(db, next_batch, config, depth + 1);
    }
}

fn drain_deferred_loads(
    db: &mut DbIndex,
    paths: HashSet<PathBuf>,
    config: &Arc<Emmyrc>,
) -> Vec<InFiled<LuaChunk>> {
    let encoding = config.workspace.encoding.clone();
    let mut new_file_ids: HashSet<FileId> = HashSet::new();
    let mut affected_sources: HashSet<FileId> = HashSet::new();

    for path in paths {
        if !path.exists() {
            continue;
        }
        let Some(uri) = file_path_to_uri(&path) else {
            continue;
        };
        if db.get_vfs().get_file_id(&uri).is_some() {
            continue;
        }
        let Some(content) = read_file_with_encoding(&path, &encoding) else {
            continue;
        };
        let file_id = db.get_vfs_mut().set_file_content(&uri, Some(content));
        new_file_ids.insert(file_id);

        if let Some(path_str) = path.to_str() {
            db.get_module_index_mut()
                .add_module_by_path(file_id, path_str);
        }

        let xmake = db.get_xmake_index();
        for source in xmake.sources_for_referenced_path(&path) {
            affected_sources.insert(source);
        }
        for source in xmake.sources_for_moduledirs_path(&path) {
            affected_sources.insert(source);
        }
    }

    let mut next: Vec<InFiled<LuaChunk>> = Vec::new();
    for file_id in new_file_ids.iter().chain(affected_sources.iter()) {
        if let Some(tree) = db.get_vfs().get_syntax_tree(file_id) {
            next.push(InFiled {
                file_id: *file_id,
                value: tree.get_chunk_node(),
            });
        }
    }

    if !next.is_empty() {
        let to_remove: Vec<FileId> = affected_sources.into_iter().collect();
        if !to_remove.is_empty() {
            db.remove_index(to_remove);
        }
    }

    next
}

trait AnalysisPipeline {
    fn analyze(db: &mut DbIndex, context: &mut AnalyzeContext);
}

fn run_analysis<T: AnalysisPipeline>(db: &mut DbIndex, context: &mut AnalyzeContext) {
    T::analyze(db, context);
}

fn module_analyze(
    db: &mut DbIndex,
    need_analyzed_files: Vec<InFiled<LuaChunk>>,
    config: Arc<Emmyrc>,
) -> Vec<(WorkspaceId, AnalyzeContext)> {
    if need_analyzed_files.len() == 1 {
        let in_filed_tree = need_analyzed_files[0].clone();
        let file_id = in_filed_tree.file_id;
        if let Some(path) = db.get_vfs().get_file_path(&file_id).cloned() {
            let path_str = match path.to_str() {
                Some(path) => path,
                None => {
                    log::warn!("file_id {:?} path not found", file_id);
                    return vec![];
                }
            };

            let workspace_id = db
                .get_module_index_mut()
                .add_module_by_path(file_id, path_str);
            let workspace_id = workspace_id.unwrap_or(WorkspaceId::MAIN);
            let mut context = AnalyzeContext::new(config, workspace_id);
            context.add_tree_chunk(in_filed_tree);
            return vec![(workspace_id, context)];
        }

        return vec![];
    }

    let _p = Profile::new("module analyze");
    let mut file_tree_map: HashMap<WorkspaceId, Vec<InFiled<LuaChunk>>> = HashMap::new();
    for in_filed_tree in need_analyzed_files {
        let file_id = in_filed_tree.file_id;
        if let Some(path) = db.get_vfs().get_file_path(&file_id).cloned() {
            let path_str = match path.to_str() {
                Some(path) => path,
                None => {
                    log::warn!("file_id {:?} path not found", file_id);
                    continue;
                }
            };

            let workspace_id = db
                .get_module_index_mut()
                .add_module_by_path(file_id, path_str);
            let workspace_id = workspace_id.unwrap_or(WorkspaceId::MAIN);
            file_tree_map
                .entry(workspace_id)
                .or_default()
                .push(in_filed_tree);
        }
    }

    let mut contexts = Vec::new();
    if let Some(std_lib) = file_tree_map.remove(&WorkspaceId::STD) {
        let mut context = AnalyzeContext::new(config.clone(), WorkspaceId::STD);
        context.tree_list = std_lib;
        contexts.push((WorkspaceId::STD, context));
    }

    let mut main_vec = Vec::new();
    for (workspace_id, tree_list) in file_tree_map {
        let mut context = AnalyzeContext::new(config.clone(), workspace_id);
        context.tree_list = tree_list;
        if workspace_id.is_library() {
            contexts.push((workspace_id, context));
        } else {
            main_vec.push((workspace_id, context));
        }
    }

    contexts.sort_by(|a, b| a.0.cmp(&b.0));

    contexts.extend(main_vec);
    contexts
}

#[derive(Debug)]
pub struct AnalyzeContext {
    tree_list: Vec<InFiled<LuaChunk>>,
    #[allow(unused)]
    config: Arc<Emmyrc>,
    unresolves: Vec<(UnResolve, InferFailReason)>,
    infer_manager: InferCacheManager,
    workspace_id: WorkspaceId,
    deferred_loads: HashSet<PathBuf>,
}

impl AnalyzeContext {
    pub fn new(emmyrc: Arc<Emmyrc>, workspace_id: WorkspaceId) -> Self {
        Self {
            tree_list: Vec::new(),
            config: emmyrc,
            unresolves: Vec::new(),
            infer_manager: InferCacheManager::new(),
            workspace_id,
            deferred_loads: HashSet::new(),
        }
    }

    pub fn add_tree_chunk(&mut self, tree: InFiled<LuaChunk>) {
        self.tree_list.push(tree);
    }

    pub fn add_unresolve(&mut self, un_resolve: UnResolve, reason: InferFailReason) {
        self.unresolves.push((un_resolve, reason));
    }

    pub fn defer_load(&mut self, path: PathBuf) {
        self.deferred_loads.insert(path);
    }
}
