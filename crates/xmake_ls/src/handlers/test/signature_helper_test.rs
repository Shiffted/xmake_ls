#[cfg(test)]
mod tests {
    use crate::handlers::test_lib::{ProviderVirtualWorkspace, VirtualSignatureHelp, check};
    use googletest::prelude::*;

    #[gtest]
    fn test_1() -> Result<()> {
        let mut ws = ProviderVirtualWorkspace::new();
        check!(ws.check_signature_helper(
            r#"
                ---@class Action
                ---@field id fun(self:Action, itemId:integer, ...:integer?):boolean
                ---@overload fun():Action
                Action = {}

                Action:id(1, <??>)
            "#,
            VirtualSignatureHelp {
                target_label: "Action:id(itemId: integer, ...: integer?): boolean".to_string(),
                active_signature: 0,
                active_parameter: 1,
            },
        ));
        Ok(())
    }

    /// Variadic-then-fixed: cursor at the first arg position should highlight
    /// the variadic slot, and the rendered label should preserve param order.
    #[gtest]
    fn test_variadic_then_fixed_first_arg() -> Result<()> {
        let mut ws = ProviderVirtualWorkspace::new();
        check!(ws.check_signature_helper(
            r#"
                ---@class AccessSpecifier

                ---@class Target
                ---@field add_rules fun(...: string, options?: AccessSpecifier): nil
                target = {}

                target.add_rules(<??>)
            "#,
            VirtualSignatureHelp {
                target_label: "Target.add_rules(...: string, options: AccessSpecifier?)"
                    .to_string(),
                active_signature: 0,
                active_parameter: 0,
            },
        ));
        Ok(())
    }

    /// Variadic-then-fixed: cursor past the variadic position should still
    /// highlight the variadic slot (we cannot know mid-typing whether the
    /// next arg will be a string or the trailing options value).
    #[gtest]
    fn test_variadic_then_fixed_past_variadic() -> Result<()> {
        let mut ws = ProviderVirtualWorkspace::new();
        check!(ws.check_signature_helper(
            r#"
                ---@class AccessSpecifier

                ---@class Target
                ---@field add_rules fun(...: string, options?: AccessSpecifier): nil
                target = {}

                target.add_rules("a", "b", <??>)
            "#,
            VirtualSignatureHelp {
                target_label: "Target.add_rules(...: string, options: AccessSpecifier?)"
                    .to_string(),
                active_signature: 0,
                active_parameter: 0,
            },
        ));
        Ok(())
    }

    #[gtest]
    fn test_2() -> Result<()> {
        let mut ws = ProviderVirtualWorkspace::new_with_init_std_lib();
        check!(ws.check_signature_helper(
            r#"
                ---@param path string
                local function readFile(path)
                end

                pcall(readFile, <??>)
            "#,
            VirtualSignatureHelp {
                target_label: "pcall(f: sync fun(path: string), path: string): boolean".to_string(),
                active_signature: 0,
                active_parameter: 1,
            },
        ));
        Ok(())
    }
}
