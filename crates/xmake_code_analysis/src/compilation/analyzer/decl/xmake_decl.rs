use std::path::Path;

use emmylua_parser::{
    LuaAstNode, LuaCallExpr, LuaCallExprStat, LuaExpr, LuaIndexKey, LuaLiteralToken, LuaStat,
};
use rowan::{TextRange, TextSize};

use crate::{
    FileId, LuaDecl, LuaDeclExtra, XmakeFunction, XmakeTarget, XmakeTargetKind,
    compilation::analyzer::decl::DeclAnalyzer, file_path_to_uri, get_xmake_function,
};

pub fn analyze_xmake_function_call(
    analyzer: &mut DeclAnalyzer,
    call_expr: &LuaCallExpr,
    xmake_function: XmakeFunction,
) -> Option<()> {
    match xmake_function {
        XmakeFunction::Import => {
            analyze_import(analyzer, call_expr);
        }
        XmakeFunction::Includes => {
            analyze_includes(analyzer, call_expr);
        }
        XmakeFunction::AddModuleDirs => {
            analyze_add_moduledirs(analyzer, call_expr);
        }
        XmakeFunction::Target => {
            analyze_target(analyzer, call_expr, XmakeTargetKind::Target);
        }
        XmakeFunction::Package => {
            analyze_target(analyzer, call_expr, XmakeTargetKind::Package);
        }
        XmakeFunction::Option => {
            analyze_target(analyzer, call_expr, XmakeTargetKind::Option);
        }
        XmakeFunction::Rule => {
            analyze_target(analyzer, call_expr, XmakeTargetKind::Rule);
        }
        XmakeFunction::Task => {
            analyze_target(analyzer, call_expr, XmakeTargetKind::Task);
        }
        _ => {}
    }

    Some(())
}

pub fn analyze_xmake_callback_call(
    analyzer: &mut DeclAnalyzer,
    call_expr: &LuaCallExpr,
) -> Option<()> {
    let arg_list = call_expr.get_args_list()?;
    let first_arg = arg_list.get_args().next()?;
    let LuaExpr::LiteralExpr(literal) = first_arg else {
        return None;
    };
    let LuaLiteralToken::String(string_token) = literal.get_literal()? else {
        return None;
    };

    let module_path = string_token.get_value();
    let source_file_id = analyzer.get_file_id();
    let module_info = analyzer.db.get_module_index().find_import(
        &analyzer.db,
        &module_path,
        source_file_id,
    )?;
    let target_file_id = module_info.file_id;
    analyzer
        .db
        .get_xmake_index_mut()
        .add_script_scope_file(source_file_id, target_file_id);

    Some(())
}

fn analyze_import(analyzer: &mut DeclAnalyzer, call_expr: &LuaCallExpr) -> Option<()> {
    let arg_list = call_expr.get_args_list()?;
    let args = arg_list.get_args().collect::<Vec<_>>();
    if args.is_empty() {
        return None;
    }

    let first_arg = &args[0];
    let string_token = match first_arg {
        LuaExpr::LiteralExpr(s) => match s.get_literal()? {
            LuaLiteralToken::String(string_token) => string_token,
            _ => return None,
        },
        _ => return None,
    };

    let import_path = string_token.get_value();
    let parts = import_path.split('.').collect::<Vec<_>>();
    if parts.is_empty() {
        return None;
    }

    let mut local_name = parts.last()?.to_string();
    if args.len() >= 2 {
        if let LuaExpr::TableExpr(table_expr) = &args[1] {
            let fields = table_expr.get_fields();
            for field in fields {
                if let Some(index_key) = field.get_field_key() {
                    match index_key {
                        LuaIndexKey::Name(name) => {
                            let field_name = name.get_name_text();
                            if field_name == "alias" {
                                if let Some(value) = field.get_value_expr() {
                                    if let LuaExpr::LiteralExpr(literal) = value {
                                        if let LuaLiteralToken::String(string_token) =
                                            literal.get_literal()?
                                        {
                                            local_name = string_token.get_value();
                                        }
                                    }
                                }
                                break;
                            }
                        }
                        _ => {}
                    }
                }
            }
        }
    }

    let decl = LuaDecl::new(
        &local_name,
        analyzer.get_file_id(),
        first_arg.get_range(),
        LuaDeclExtra::Local {
            kind: first_arg.syntax().kind(),
            attrib: None,
        },
        None,
    );

    analyzer.add_decl(decl);

    Some(())
}

fn analyze_includes(analyzer: &mut DeclAnalyzer, call_expr: &LuaCallExpr) -> Option<()> {
    let arg_list = call_expr.get_args_list()?;
    let args = arg_list.get_args().collect::<Vec<_>>();
    if args.is_empty() {
        return None;
    }

    let first_arg = &args[0];
    let string_token = match first_arg {
        LuaExpr::LiteralExpr(s) => match s.get_literal()? {
            LuaLiteralToken::String(string_token) => string_token,
            _ => return None,
        },
        _ => return None,
    };

    let include_path = string_token.get_value();
    let founded_module_info = analyzer.db.get_module_index().find_include(
        &analyzer.db,
        &include_path,
        analyzer.get_file_id(),
    )?;
    analyzer.add_include_path(founded_module_info.file_id);

    Some(())
}

fn analyze_add_moduledirs(analyzer: &mut DeclAnalyzer, call_expr: &LuaCallExpr) -> Option<()> {
    let arg_list = call_expr.get_args_list()?;
    let source_file_id = analyzer.get_file_id();
    let current_dir = analyzer
        .db
        .get_vfs()
        .get_file_path(&source_file_id)?
        .parent()?
        .to_path_buf();

    for arg in arg_list.get_args() {
        let LuaExpr::LiteralExpr(literal) = arg else {
            continue;
        };
        let Some(LuaLiteralToken::String(string_token)) = literal.get_literal() else {
            continue;
        };
        let dir_path = current_dir.join(string_token.get_value());
        mark_dir_as_script_scope(analyzer, source_file_id, &dir_path);
    }

    Some(())
}

fn mark_dir_as_script_scope(analyzer: &mut DeclAnalyzer, source_file_id: FileId, dir: &Path) {
    let entries = match std::fs::read_dir(dir) {
        Ok(entries) => entries,
        Err(_) => return,
    };
    for entry in entries.flatten() {
        let path = entry.path();
        let file_type = match entry.file_type() {
            Ok(ft) => ft,
            Err(_) => continue,
        };
        if file_type.is_dir() {
            mark_dir_as_script_scope(analyzer, source_file_id, &path);
            continue;
        }
        if path.extension().and_then(|e| e.to_str()) != Some("lua") {
            continue;
        }
        let Some(uri) = file_path_to_uri(&path) else {
            continue;
        };
        let Some(file_id) = analyzer.db.get_vfs().get_file_id(&uri) else {
            continue;
        };
        analyzer
            .db
            .get_xmake_index_mut()
            .add_script_scope_file(source_file_id, file_id);
    }
}

fn analyze_target(
    analyzer: &mut DeclAnalyzer,
    call_expr: &LuaCallExpr,
    kind: XmakeTargetKind,
) -> Option<()> {
    let arg_list = call_expr.get_args_list()?;
    let args = arg_list.get_args().collect::<Vec<_>>();
    if args.is_empty() {
        return None;
    }

    let first_arg = &args[0];
    let string_token = match first_arg {
        LuaExpr::LiteralExpr(s) => match s.get_literal()? {
            LuaLiteralToken::String(string_token) => string_token,
            _ => return None,
        },
        _ => return None,
    };

    let target_name = string_token.get_value();
    let file_id = analyzer.get_file_id();
    let range = if args.len() > 1 {
        args[1].get_range()
    } else {
        let stat = call_expr.ancestors::<LuaStat>().next()?;
        let end_position = get_end_position(&stat, kind)?;
        if end_position <= stat.get_range().end() {
            return None;
        }
        TextRange::new(stat.get_range().end(), end_position)
    };

    analyzer.db.get_xmake_index_mut().add_target_or_package(
        file_id,
        XmakeTarget {
            name: target_name,
            kind,
            range,
        },
    );

    Some(())
}

fn get_end_position(stat: &LuaStat, target_kind: XmakeTargetKind) -> Option<TextSize> {
    let mut current_syntax_node = stat.syntax().clone();
    while let Some(next_sibling) = current_syntax_node.next_sibling() {
        if let Some(call_expr_stat) = LuaCallExprStat::cast(next_sibling.clone()) {
            let call_expr = call_expr_stat.get_call_expr()?;
            if let Some(xmake_function) = get_xmake_function(&call_expr) {
                match (xmake_function, target_kind) {
                    (XmakeFunction::EndTarget, XmakeTargetKind::Target)
                    | (XmakeFunction::EndPackage, XmakeTargetKind::Package)
                    | (XmakeFunction::EndOption, XmakeTargetKind::Option)
                    | (XmakeFunction::EndRule, XmakeTargetKind::Rule)
                    | (XmakeFunction::EndTask, XmakeTargetKind::Task) => {
                        return Some(call_expr.get_range().end());
                    }
                    // new target/package starts, stop searching
                    (
                        XmakeFunction::Target
                        | XmakeFunction::Package
                        | XmakeFunction::Option
                        | XmakeFunction::Rule
                        | XmakeFunction::Task,
                        _,
                    ) => {
                        return Some(call_expr.get_position());
                    }
                    _ => {}
                }
            }
        }
        current_syntax_node = next_sibling;
    }

    let root = stat.get_root();
    Some(root.text_range().end())
}
