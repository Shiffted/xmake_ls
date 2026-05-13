use emmylua_parser::{LuaAstNode, LuaCallExpr, LuaExpr, LuaNameExpr};
use rowan::TextRange;

use crate::{
    DiagnosticCode, LuaType, PositionContext, SemanticModel, XmakeScope, filter_type_by_scope,
    out_of_scope_global_scopes,
};

use super::{Checker, DiagnosticContext};

pub struct XmakeScopeChecker;

impl Checker for XmakeScopeChecker {
    const CODES: &[DiagnosticCode] = &[DiagnosticCode::XmakeScopeMismatch];

    fn check(context: &mut DiagnosticContext, semantic_model: &SemanticModel) {
        let root = semantic_model.get_root().clone();
        for call_expr in root.descendants::<LuaCallExpr>() {
            check_call_expr(context, semantic_model, call_expr);
        }
    }
}

fn check_call_expr(
    context: &mut DiagnosticContext,
    semantic_model: &SemanticModel,
    call_expr: LuaCallExpr,
) -> Option<()> {
    let prefix = call_expr.get_prefix_expr()?;
    let db = semantic_model.get_db();
    let file_id = semantic_model.get_file_id();
    let position = call_expr.get_position();
    let ctx = PositionContext::new(db, file_id, position);

    match prefix {
        LuaExpr::NameExpr(name_expr) => {
            check_name_call(context, db, &ctx, &name_expr);
        }
        LuaExpr::IndexExpr(index_expr) => {
            let prefix_type = semantic_model
                .infer_expr(LuaExpr::IndexExpr(index_expr.clone()))
                .ok()?;
            let name_token = index_expr.get_index_name_token()?;
            check_type_call(
                context,
                db,
                &ctx,
                &prefix_type,
                name_token.text().to_string(),
                name_token.text_range(),
            );
        }
        _ => {}
    }

    Some(())
}

fn check_name_call(
    context: &mut DiagnosticContext,
    db: &crate::DbIndex,
    ctx: &PositionContext,
    name_expr: &LuaNameExpr,
) -> Option<()> {
    let name = name_expr.get_name_text()?;
    let scopes = out_of_scope_global_scopes(db, &name, ctx)?;
    let range = name_expr.get_range();
    emit_diagnostic(context, range, &name, &scopes);
    Some(())
}

fn check_type_call(
    context: &mut DiagnosticContext,
    db: &crate::DbIndex,
    ctx: &PositionContext,
    prefix_type: &LuaType,
    name: String,
    range: TextRange,
) -> Option<()> {
    filter_type_by_scope(db, prefix_type, ctx)?;
    let scopes = collect_signature_scopes(db, prefix_type);
    if scopes.is_empty() {
        return None;
    }
    emit_diagnostic(context, range, &name, &scopes);
    Some(())
}

fn collect_signature_scopes(db: &crate::DbIndex, typ: &LuaType) -> Vec<XmakeScope> {
    use crate::{LuaSemanticDeclId, TypeVisitTrait};
    let mut scopes: Vec<XmakeScope> = Vec::new();
    typ.visit_type(&mut |t| {
        if let LuaType::Signature(sig) = t {
            if let Some(prop) = db
                .get_property_index()
                .get_property(&LuaSemanticDeclId::Signature(*sig))
            {
                if let Some(scope) = prop.scope {
                    if !scopes.contains(&scope) {
                        scopes.push(scope);
                    }
                }
            }
        }
    });
    scopes
}

fn emit_diagnostic(
    context: &mut DiagnosticContext,
    range: TextRange,
    name: &str,
    scopes: &[XmakeScope],
) {
    let scopes_str = scopes
        .iter()
        .map(scope_name)
        .collect::<Vec<_>>()
        .join(", ");
    let message = t!(
        "'%{name}' is only valid in scopes: %{scopes}",
        name = name,
        scopes = scopes_str
    )
    .to_string();
    context.add_diagnostic(DiagnosticCode::XmakeScopeMismatch, range, message, None);
}

fn scope_name(scope: &XmakeScope) -> &'static str {
    match scope {
        XmakeScope::Target => "target",
        XmakeScope::Package => "package",
        XmakeScope::Option => "option",
        XmakeScope::Rule => "rule",
        XmakeScope::Task => "task",
        XmakeScope::Toolchain => "toolchain",
        XmakeScope::Description => "description",
        XmakeScope::Root => "root",
        XmakeScope::Script => "script",
    }
}
