#[cfg(test)]
mod tests {
    use crate::{DiagnosticCode, VirtualWorkspace};

    #[test]
    fn test_in_scope_call_no_diagnostic() {
        let mut ws = VirtualWorkspace::new();
        ws.def_file(
            "meta.lua",
            r#"---@meta
---@scope target
function add_files(...) end
"#,
        );

        assert!(ws.check_code_for(
            DiagnosticCode::XmakeScopeMismatch,
            r#"
                target("foo")
                    add_files("a.lua")
            "#
        ));
    }

    #[test]
    fn test_out_of_scope_call_emits_diagnostic() {
        let mut ws = VirtualWorkspace::new();
        ws.def_file(
            "meta.lua",
            r#"---@meta
---@scope script
function only_script_fn() end
"#,
        );

        assert!(!ws.check_code_for(
            DiagnosticCode::XmakeScopeMismatch,
            r#"
                only_script_fn()
            "#
        ));
    }

    #[test]
    fn test_same_name_multiple_scopes_one_matches() {
        let mut ws = VirtualWorkspace::new();
        ws.def_file(
            "meta.lua",
            r#"---@meta
---@scope target
function shared_name(a) end
---@scope option
function shared_name(b) end
"#,
        );

        assert!(ws.check_code_for(
            DiagnosticCode::XmakeScopeMismatch,
            r#"
                target("foo")
                    shared_name("x")
            "#
        ));
    }

    #[test]
    fn test_same_name_multiple_scopes_none_match() {
        let mut ws = VirtualWorkspace::new();
        ws.def_file(
            "meta.lua",
            r#"---@meta
---@scope target
function shared_name(a) end
---@scope option
function shared_name(b) end
"#,
        );

        assert!(!ws.check_code_for(
            DiagnosticCode::XmakeScopeMismatch,
            r#"
                package("p")
                    shared_name("x")
            "#
        ));
    }

    #[test]
    fn test_user_shadowed_global_no_diagnostic() {
        let mut ws = VirtualWorkspace::new();
        ws.def_file(
            "meta.lua",
            r#"---@meta
---@scope target
function add_urls(...) end
"#,
        );

        assert!(ws.check_code_for(
            DiagnosticCode::XmakeScopeMismatch,
            r#"
                function add_urls(val)
                end

                add_urls("url")
            "#
        ));
    }

    #[test]
    fn test_untagged_function_no_diagnostic() {
        let mut ws = VirtualWorkspace::new();
        ws.def_file(
            "meta.lua",
            r#"---@meta
function plain_fn() end
"#,
        );

        assert!(ws.check_code_for(
            DiagnosticCode::XmakeScopeMismatch,
            r#"
                plain_fn()
            "#
        ));
    }
}
