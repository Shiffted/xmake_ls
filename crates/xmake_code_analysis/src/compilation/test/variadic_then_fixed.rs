//! Regression harness for type inference and overload resolution against
//! `fun(...: T, trailing?: U)` signatures (variadic followed by fixed params).
//!
//! See also `diagnostic/test/variadic_then_fixed_test.rs` for the diagnostic
//! side of the same feature.

#[cfg(test)]
mod test {
    use crate::VirtualWorkspace;

    /// A single signature with variadic-then-fixed should still resolve and
    /// produce its declared return type when called.
    #[test]
    fn single_signature_returns_declared_type() {
        let mut ws = VirtualWorkspace::new();
        ws.def(
            r#"
            ---@class AccessSpecifier

            ---@class Target
            ---@field add_rules fun(...: string, options?: AccessSpecifier): integer
            target = {}
            "#,
        );

        let int_ty = ws.expr_ty("target.add_rules('a', 'b')");
        assert_eq!(int_ty, ws.ty("integer"));
    }

    /// Overload resolution: when the last arg matches the trailing slot's
    /// type, the variadic-then-fixed overload should be selected; otherwise
    /// the plain variadic overload wins.
    #[test]
    fn overload_picks_trailing_when_last_arg_matches() {
        let mut ws = VirtualWorkspace::new();
        ws.def(
            r#"
            ---@class AccessSpecifier

            ---@class Target
            ---@field add_rules fun(...: string): integer
            ---@field add_rules fun(...: string, options: AccessSpecifier): string
            target = {}

            ---@type AccessSpecifier
            opts = nil
            "#,
        );

        // No options arg → picks the integer-returning overload.
        let int_ty = ws.expr_ty("target.add_rules('a', 'b')");
        assert_eq!(int_ty, ws.ty("integer"));

        // Trailing AccessSpecifier → picks the string-returning overload.
        let str_ty = ws.expr_ty("target.add_rules('a', 'b', opts)");
        assert_eq!(str_ty, ws.ty("string"));
    }

    /// When the last arg's type doesn't fit the trailing slot, the resolver
    /// should fall back to the all-variadic overload rather than picking the
    /// trailing-typed one and failing.
    #[test]
    fn overload_falls_back_to_variadic_when_trailing_type_mismatches() {
        let mut ws = VirtualWorkspace::new();
        ws.def(
            r#"
            ---@class AccessSpecifier

            ---@class Target
            ---@field add_rules fun(...: string): integer
            ---@field add_rules fun(...: string, options: AccessSpecifier): string
            target = {}
            "#,
        );

        let int_ty = ws.expr_ty("target.add_rules('a', 'b', 'c')");
        assert_eq!(int_ty, ws.ty("integer"));
    }
}
