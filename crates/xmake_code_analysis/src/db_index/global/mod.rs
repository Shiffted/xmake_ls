mod global_id;

use std::collections::HashMap;

pub use global_id::GlobalId;
use rowan::TextSize;

use crate::{
    FileId, LuaSemanticDeclId, LuaSignatureId, LuaType, TypeVisitTrait, XmakeScope,
    is_script_scope_position,
};

#[derive(Debug, Clone, Copy)]
pub struct PositionContext {
    pub file_id: FileId,
    pub position: TextSize,
    pub is_script_scope: bool,
}

impl PositionContext {
    pub fn new(db: &DbIndex, file_id: FileId, position: TextSize) -> Self {
        Self {
            file_id,
            position,
            is_script_scope: is_script_scope_position(db, file_id, position),
        }
    }
}

use super::{DbIndex, LuaDeclId, LuaIndex};

#[derive(Debug)]
pub struct LuaGlobalIndex {
    global_decl: HashMap<GlobalId, Vec<LuaDeclId>>,
}

impl LuaGlobalIndex {
    pub fn new() -> Self {
        Self {
            global_decl: HashMap::new(),
        }
    }

    pub fn add_global_decl(&mut self, name: &str, decl_id: LuaDeclId) {
        let id = GlobalId::new(name);
        self.global_decl
            .entry(id)
            .or_insert_with(Vec::new)
            .push(decl_id);
    }

    pub fn get_all_global_decl_ids(&self) -> Vec<LuaDeclId> {
        let mut decls = Vec::new();
        for (_, v) in &self.global_decl {
            decls.extend(v);
        }

        decls
    }

    pub fn get_global_decl_ids(&self, name: &str) -> Option<&Vec<LuaDeclId>> {
        let id = GlobalId::new(name);
        self.global_decl.get(&id)
    }

    pub fn is_exist_global_decl(&self, name: &str) -> bool {
        let id = GlobalId::new(name);
        self.global_decl.contains_key(&id)
    }

    pub fn resolve_global_decl_id(
        &self,
        db: &DbIndex,
        name: &str,
        file_id: FileId,
        position: TextSize,
    ) -> Option<LuaDeclId> {
        let decl_ids = self.get_global_decl_ids(name)?;
        if decl_ids.len() == 1 {
            return Some(decl_ids[0]);
        }

        let ctx = PositionContext::new(db, file_id, position);
        let mut last_valid_decl_id = None;
        for decl_id in decl_ids {
            if filter_global_decl_by_scope(db, *decl_id, &ctx).is_some() {
                continue;
            }
            let decl_type_cache = db.get_type_index().get_type_cache(&decl_id.clone().into());
            match decl_type_cache {
                Some(type_cache) => {
                    let typ = type_cache.as_type();
                    if typ.is_def() || typ.is_ref() {
                        return Some(*decl_id);
                    }

                    if let LuaType::Signature(_) = typ {
                        return Some(*decl_id);
                    }

                    if type_cache.is_table() {
                        last_valid_decl_id = Some(decl_id)
                    }
                }
                None => {}
            }
        }

        if last_valid_decl_id.is_none() && decl_ids.len() > 0 {
            return Some(decl_ids[0]);
        }

        last_valid_decl_id.cloned()
    }
}

fn lookup_global_decl_scope(db: &DbIndex, decl_id: LuaDeclId) -> Option<XmakeScope> {
    if let Some(prop) = db
        .get_property_index()
        .get_property(&LuaSemanticDeclId::LuaDecl(decl_id))
    {
        if let Some(scope) = prop.scope {
            return Some(scope);
        }
    }
    let type_cache = db.get_type_index().get_type_cache(&decl_id.into())?;
    if let LuaType::Signature(signature_id) = type_cache.as_type() {
        let prop = db
            .get_property_index()
            .get_property(&LuaSemanticDeclId::Signature(*signature_id))?;
        return prop.scope;
    }
    None
}

pub fn filter_global_decl_by_scope(
    db: &DbIndex,
    decl_id: LuaDeclId,
    ctx: &PositionContext,
) -> Option<()> {
    let xmake_scope = lookup_global_decl_scope(db, decl_id)?;
    apply_xmake_scope_filter(db, xmake_scope, ctx)
}

pub fn filter_type_by_scope(
    db: &DbIndex,
    typ: &LuaType,
    ctx: &PositionContext,
) -> Option<()> {
    let mut signatures: Vec<LuaSignatureId> = Vec::new();
    typ.visit_type(&mut |t| {
        if let LuaType::Signature(sig) = t {
            signatures.push(*sig);
        }
    });
    if signatures.is_empty() {
        return None;
    }
    let all_filtered = signatures
        .iter()
        .all(|sig| filter_global_by_scope(db, LuaSemanticDeclId::Signature(*sig), ctx).is_some());
    if all_filtered { Some(()) } else { None }
}

pub fn filter_global_by_scope(
    db: &DbIndex,
    semantic_id: LuaSemanticDeclId,
    ctx: &PositionContext,
) -> Option<()> {
    let property = db.get_property_index().get_property(&semantic_id)?;
    let xmake_scope = property.scope?;
    apply_xmake_scope_filter(db, xmake_scope, ctx)
}

fn apply_xmake_scope_filter(
    db: &DbIndex,
    xmake_scope: XmakeScope,
    ctx: &PositionContext,
) -> Option<()> {
    match xmake_scope {
        XmakeScope::Script => return (!ctx.is_script_scope).then_some(()),
        XmakeScope::Description => return ctx.is_script_scope.then_some(()),
        _ => {}
    }

    let containing_target = db
        .get_xmake_index()
        .get_targets(ctx.file_id)
        .and_then(|targets| targets.iter().find(|t| t.range.contains(ctx.position)));

    match containing_target {
        Some(xmake_target) => match (xmake_scope, xmake_target.kind) {
            (XmakeScope::Package, x) if !x.is_package() => Some(()),
            (XmakeScope::Option, x) if !x.is_option() => Some(()),
            (XmakeScope::Rule, x) if !x.is_rule() => Some(()),
            (XmakeScope::Target, x) if !x.is_target() => Some(()),
            (XmakeScope::Task, x) if !x.is_task() => Some(()),
            _ => None,
        },
        // At the file top level only target-scoped functions are valid.
        None => match xmake_scope {
            XmakeScope::Target => None,
            _ => Some(()),
        },
    }
}

impl LuaIndex for LuaGlobalIndex {
    fn remove(&mut self, file_id: FileId) {
        self.global_decl.retain(|_, v| {
            v.retain(|decl_id| decl_id.file_id != file_id);
            !v.is_empty()
        });
    }

    fn clear(&mut self) {
        self.global_decl.clear();
    }
}
