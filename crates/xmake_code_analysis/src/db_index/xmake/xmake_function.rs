use emmylua_parser::{LuaCallExpr, LuaExpr};

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum XmakeFunction {
    AddFiles,
    Includes,
    Import,
    AddDeps,
    AddModuleDirs,
    Target,
    Package,
    Option,
    Rule,
    Task,
    Toolchain,
    EndTarget,
    EndPackage,
    EndOption,
    EndRule,
    EndTask,
    EndToolchain,
}

pub fn get_xmake_function(call_expr: &LuaCallExpr) -> Option<XmakeFunction> {
    let prefix_expr = call_expr.get_prefix_expr()?;
    let LuaExpr::NameExpr(name_expr) = prefix_expr else {
        return None;
    };

    let name = name_expr.get_name_text()?;
    match name.as_str() {
        "add_files" => Some(XmakeFunction::AddFiles),
        "includes" => Some(XmakeFunction::Includes),
        "import" => Some(XmakeFunction::Import),
        "add_deps" => Some(XmakeFunction::AddDeps),
        "add_moduledirs" => Some(XmakeFunction::AddModuleDirs),
        "target" => Some(XmakeFunction::Target),
        "end_target" => Some(XmakeFunction::EndTarget),
        "package" => Some(XmakeFunction::Package),
        "end_package" => Some(XmakeFunction::EndPackage),
        "option" => Some(XmakeFunction::Option),
        "end_option" => Some(XmakeFunction::EndOption),
        "rule" => Some(XmakeFunction::Rule),
        "end_rule" => Some(XmakeFunction::EndRule),
        "task" => Some(XmakeFunction::Task),
        "end_task" => Some(XmakeFunction::EndTask),
        "toolchain" => Some(XmakeFunction::Toolchain),
        "end_toolchain" => Some(XmakeFunction::EndToolchain),
        _ => return None,
    }
}

/// Whether `name` is an xmake script-scope callback registration like
/// `on_load`, `before_build`, `after_install`. These take either a function
/// or a string module name.
pub fn is_xmake_callback_name(name: &str) -> bool {
    name.starts_with("on_") || name.starts_with("before_") || name.starts_with("after_")
}

pub fn is_xmake_callback_call(call_expr: &LuaCallExpr) -> bool {
    let Some(LuaExpr::NameExpr(name_expr)) = call_expr.get_prefix_expr() else {
        return false;
    };
    let Some(name) = name_expr.get_name_text() else {
        return false;
    };
    is_xmake_callback_name(&name)
}
