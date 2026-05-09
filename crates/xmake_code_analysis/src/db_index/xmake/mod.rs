mod target;
mod xmake_function;

use std::{
    collections::{HashMap, HashSet},
    path::PathBuf,
};

use emmylua_parser::{
    LuaAssignStat, LuaAstNode, LuaCallExpr, LuaClosureExpr, LuaLocalName, LuaLocalStat,
    LuaTableField, LuaVarExpr,
};
use rowan::TextSize;

use crate::{
    DbIndex, FileId, LuaDeclId, LuaIndex, LuaMemberId, LuaSemanticDeclId, LuaSignatureId,
    XmakeScope,
};
pub use target::*;
pub use xmake_function::*;

#[derive(Debug)]
pub struct LuaXmakeIndex {
    includes_file_ids: HashMap<FileId, Vec<FileId>>,
    targets_or_packages: HashMap<FileId, Vec<XmakeTarget>>,
    script_scope_files: HashSet<FileId>,
    script_scope_sources: HashMap<FileId, Vec<FileId>>,
    moduledirs_by_source: HashMap<FileId, Vec<PathBuf>>,
    referenced_paths_by_source: HashMap<FileId, Vec<PathBuf>>,
}

impl LuaXmakeIndex {
    pub fn new() -> Self {
        Self {
            includes_file_ids: HashMap::new(),
            targets_or_packages: HashMap::new(),
            script_scope_files: HashSet::new(),
            script_scope_sources: HashMap::new(),
            moduledirs_by_source: HashMap::new(),
            referenced_paths_by_source: HashMap::new(),
        }
    }

    pub fn add_includes(&mut self, file_id: FileId, include_file_id: FileId) {
        self.includes_file_ids
            .entry(file_id)
            .or_insert_with(Vec::new)
            .push(include_file_id);
    }

    pub fn get_includes(&self, file_id: FileId) -> Option<&Vec<FileId>> {
        self.includes_file_ids.get(&file_id)
    }

    pub fn add_target_or_package(&mut self, file_id: FileId, target: XmakeTarget) {
        self.targets_or_packages
            .entry(file_id)
            .or_insert_with(Vec::new)
            .push(target);
    }

    pub fn get_targets(&self, file_id: FileId) -> Option<&Vec<XmakeTarget>> {
        self.targets_or_packages.get(&file_id)
    }

    pub fn add_script_scope_file(&mut self, source: FileId, target: FileId) {
        self.script_scope_sources
            .entry(source)
            .or_default()
            .push(target);
        self.script_scope_files.insert(target);
    }

    pub fn is_script_scope_file(&self, file_id: FileId) -> bool {
        self.script_scope_files.contains(&file_id)
    }

    pub fn add_moduledirs(&mut self, source: FileId, dir: PathBuf) {
        let entry = self.moduledirs_by_source.entry(source).or_default();
        if !entry.iter().any(|p| p == &dir) {
            entry.push(dir);
        }
    }

    pub fn add_referenced_path(&mut self, source: FileId, path: PathBuf) {
        let entry = self.referenced_paths_by_source.entry(source).or_default();
        if !entry.iter().any(|p| p == &path) {
            entry.push(path);
        }
    }

    pub fn sources_for_script_target(&self, target: FileId) -> Vec<FileId> {
        self.script_scope_sources
            .iter()
            .filter_map(|(source, targets)| targets.contains(&target).then_some(*source))
            .collect()
    }

    pub fn sources_for_moduledirs_path(&self, path: &std::path::Path) -> Vec<FileId> {
        self.moduledirs_by_source
            .iter()
            .filter_map(|(source, dirs)| {
                dirs.iter().any(|d| path.starts_with(d)).then_some(*source)
            })
            .collect()
    }

    pub fn sources_for_referenced_path(&self, path: &std::path::Path) -> Vec<FileId> {
        self.referenced_paths_by_source
            .iter()
            .filter_map(|(source, paths)| paths.iter().any(|p| p == path).then_some(*source))
            .collect()
    }

    pub fn sources_for_include(&self, included: FileId) -> Vec<FileId> {
        self.includes_file_ids
            .iter()
            .filter_map(|(source, includes)| includes.contains(&included).then_some(*source))
            .collect()
    }
}

/// Whether `position` in `file_id` is inside an xmake script-scope context.
///
/// Three ways to qualify:
/// 1. The whole file is registered as script-scope (e.g. it was named in
///    `on_run("foo")` or it lives under a directory passed to
///    `add_moduledirs(...)`).
/// 2. The position is inside a callback that is the argument to an
///    xmake `on_*`/`before_*`/`after_*` callback registration.
/// 3. The position is inside a closure whose user-defined `@scope` tag
///    classifies it as `script`.
pub fn is_script_scope_position(db: &DbIndex, file_id: FileId, position: TextSize) -> bool {
    if db.get_xmake_index().is_script_scope_file(file_id) {
        return true;
    }

    let Some(syntax_tree) = db.get_vfs().get_syntax_tree(&file_id) else {
        return false;
    };
    let root = syntax_tree.get_red_root();
    let token = match root.token_at_offset(position) {
        rowan::TokenAtOffset::None => return false,
        rowan::TokenAtOffset::Single(t) => t,
        rowan::TokenAtOffset::Between(_, right) => right,
    };

    let Some(parent) = token.parent() else {
        return false;
    };
    for ancestor in parent.ancestors() {
        if let Some(closure) = LuaClosureExpr::cast(ancestor) {
            match closure_user_scope(db, file_id, &closure) {
                Some(XmakeScope::Script) => return true,
                Some(XmakeScope::Description) => return false,
                _ => {}
            }
            if is_callback_arg_closure(&closure) {
                return true;
            }
        }
    }
    false
}

fn closure_user_scope(
    db: &DbIndex,
    file_id: FileId,
    closure: &LuaClosureExpr,
) -> Option<XmakeScope> {
    let signature_id = LuaSignatureId::from_closure(file_id, closure);
    if let Some(scope) = db
        .get_property_index()
        .get_property(&LuaSemanticDeclId::Signature(signature_id))
        .and_then(|p| p.scope)
    {
        return Some(scope);
    }

    closure_binding_scope(db, file_id, closure)
}

fn closure_binding_scope(
    db: &DbIndex,
    file_id: FileId,
    closure: &LuaClosureExpr,
) -> Option<XmakeScope> {
    let mut node = closure.syntax().parent()?;
    loop {
        if let Some(local_stat) = LuaLocalStat::cast(node.clone()) {
            let local_name = local_stat.child::<LuaLocalName>()?;
            let decl_id = LuaDeclId::new(file_id, local_name.get_position());
            return db
                .get_property_index()
                .get_property(&LuaSemanticDeclId::LuaDecl(decl_id))?
                .scope;
        }
        if let Some(assign_stat) = LuaAssignStat::cast(node.clone()) {
            let first_var = assign_stat.child::<LuaVarExpr>()?;
            let owner = match first_var {
                LuaVarExpr::NameExpr(name_expr) => LuaSemanticDeclId::LuaDecl(LuaDeclId::new(
                    file_id,
                    name_expr.get_position(),
                )),
                LuaVarExpr::IndexExpr(index_expr) => LuaSemanticDeclId::Member(LuaMemberId::new(
                    index_expr.get_syntax_id(),
                    file_id,
                )),
            };
            return db.get_property_index().get_property(&owner)?.scope;
        }
        if let Some(table_field) = LuaTableField::cast(node.clone()) {
            let member_id = LuaMemberId::new(table_field.get_syntax_id(), file_id);
            return db
                .get_property_index()
                .get_property(&LuaSemanticDeclId::Member(member_id))?
                .scope;
        }
        if LuaCallExpr::can_cast(node.kind().into())
            || LuaClosureExpr::can_cast(node.kind().into())
        {
            return None;
        }
        node = node.parent()?;
    }
}

fn is_callback_arg_closure(closure: &LuaClosureExpr) -> bool {
    let Some(call_node) = closure
        .syntax()
        .parent()
        .and_then(|arg_list| arg_list.parent())
    else {
        return false;
    };
    let Some(call_expr) = LuaCallExpr::cast(call_node) else {
        return false;
    };
    is_xmake_callback_call(&call_expr)
}

impl LuaIndex for LuaXmakeIndex {
    fn remove(&mut self, file_id: crate::FileId) {
        self.includes_file_ids.remove(&file_id);
        self.targets_or_packages.remove(&file_id);
        self.moduledirs_by_source.remove(&file_id);
        self.referenced_paths_by_source.remove(&file_id);
        if let Some(targets) = self.script_scope_sources.remove(&file_id) {
            for target in targets {
                let still_referenced = self
                    .script_scope_sources
                    .values()
                    .any(|v| v.contains(&target));
                if !still_referenced {
                    self.script_scope_files.remove(&target);
                }
            }
        }
        let still_target = self
            .script_scope_sources
            .values()
            .any(|v| v.contains(&file_id));
        if !still_target {
            self.script_scope_files.remove(&file_id);
        }
    }

    fn clear(&mut self) {
        self.includes_file_ids.clear();
        self.targets_or_packages.clear();
        self.script_scope_files.clear();
        self.script_scope_sources.clear();
        self.moduledirs_by_source.clear();
        self.referenced_paths_by_source.clear();
    }
}
