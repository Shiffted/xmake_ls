//! Regression harness for `fun(...: T, trailing?: U)` — a variadic parameter
//! followed by one or more fixed parameters. See
//! `compilation/test/variadic_then_fixed.rs` for the type-inference side.

#[cfg(test)]
mod test {
    use crate::{DiagnosticCode, VirtualWorkspace};

    /// All call args are absorbed by the variadic; the optional trailing slot
    /// is absent. No `MissingParameter` should fire.
    #[test]
    fn variadic_only_no_missing_parameter() {
        let mut ws = VirtualWorkspace::new();
        assert!(ws.check_code_for(
            DiagnosticCode::MissingParameter,
            r#"
                ---@class AccessSpecifier

                ---@class Target
                ---@field add_rules fun(...: string, options?: AccessSpecifier): nil
                local target = {}

                target.add_rules("a", "b")
            "#
        ));
    }

    /// When the trailing param is *required* (no `?`), calling with no args
    /// at all should emit `MissingParameter`.
    #[test]
    fn required_trailing_param_emits_missing() {
        let mut ws = VirtualWorkspace::new();
        assert!(!ws.check_code_for(
            DiagnosticCode::MissingParameter,
            r#"
                ---@class AccessSpecifier

                ---@class Target
                ---@field add_rules fun(...: string, options: AccessSpecifier): nil
                local target = {}

                target.add_rules()
            "#
        ));
    }

    /// The last call arg matches the trailing slot's type, so the variadic
    /// absorbs the leading args and the trailing slot binds the last one.
    /// No `RedundantParameter` should fire.
    #[test]
    fn trailing_arg_no_redundant() {
        let mut ws = VirtualWorkspace::new();
        assert!(ws.check_code_for(
            DiagnosticCode::RedundantParameter,
            r#"
                ---@class AccessSpecifier

                ---@class Target
                ---@field add_rules fun(...: string, options?: AccessSpecifier): nil
                local target = {}

                ---@type AccessSpecifier
                local opts

                target.add_rules("a", "b", opts)
            "#
        ));
    }

    /// The trailing arg matches the trailing slot's type — no
    /// `ParamTypeNotMatch`.
    #[test]
    fn trailing_arg_type_matches() {
        let mut ws = VirtualWorkspace::new();
        assert!(ws.check_code_for(
            DiagnosticCode::ParamTypeNotMatch,
            r#"
                ---@class AccessSpecifier

                ---@class Target
                ---@field add_rules fun(...: string, options?: AccessSpecifier): nil
                local target = {}

                ---@type AccessSpecifier
                local opts

                target.add_rules("a", "b", opts)
            "#
        ));
    }

    /// Args bound to the variadic slot are still typechecked against the
    /// variadic type. Passing `123` (integer) where `...: string` is expected
    /// should still emit `ParamTypeNotMatch`.
    #[test]
    fn variadic_arg_type_mismatch_still_fires() {
        let mut ws = VirtualWorkspace::new();
        assert!(!ws.check_code_for(
            DiagnosticCode::ParamTypeNotMatch,
            r#"
                ---@class AccessSpecifier

                ---@class Target
                ---@field add_rules fun(...: string, options?: AccessSpecifier): nil
                local target = {}

                ---@type AccessSpecifier
                local opts

                target.add_rules(123, opts)
            "#
        ));
    }

    /// When the last arg's type does NOT fit the trailing slot, it should
    /// fold back into the variadic — no spurious `ParamTypeNotMatch`.
    #[test]
    fn last_arg_falls_back_to_variadic() {
        let mut ws = VirtualWorkspace::new();
        assert!(ws.check_code_for(
            DiagnosticCode::ParamTypeNotMatch,
            r#"
                ---@class AccessSpecifier

                ---@class Target
                ---@field add_rules fun(...: string, options?: AccessSpecifier): nil
                local target = {}

                target.add_rules("a", "b", "c")
            "#
        ));
    }

    /// Two trailing fixed params after the variadic — the last two args
    /// should bind to them positionally; everything else is variadic.
    #[test]
    fn two_trailing_params_bind_positionally() {
        let mut ws = VirtualWorkspace::new();
        assert!(ws.check_code_for(
            DiagnosticCode::ParamTypeNotMatch,
            r#"
                ---@class AccessSpecifier

                ---@class Target
                ---@field add_rules fun(...: string, scope: AccessSpecifier, weight: integer): nil
                local target = {}

                ---@type AccessSpecifier
                local opts

                target.add_rules("a", "b", opts, 42)
            "#
        ));

        assert!(ws.check_code_for(
            DiagnosticCode::MissingParameter,
            r#"
                ---@class AccessSpecifier

                ---@class Target
                ---@field add_rules fun(...: string, scope: AccessSpecifier, weight: integer): nil
                local target = {}

                ---@type AccessSpecifier
                local opts

                target.add_rules("a", "b", opts, 42)
            "#
        ));
    }
}
