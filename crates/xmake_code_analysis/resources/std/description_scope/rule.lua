---@meta
---[rule](https://xmake.io/api/description/custom-rule)

---@class RuleAddDepsOption
---@field order boolean? Whether to execute dependencies in order

---
--- Define a rule
---
---[Open in browser](https://xmake.io/api/description/custom-rule#rule)
---@param name string Rule name
---@param func? fun(): nil Rule scoped function
function rule(name, func) end

---
--- Define a rule
---
---[Open in browser](https://xmake.io/api/description/custom-rule#rule)
---@param name string Rule name
---@param attr table Rule attributes
function rule(name, attr) end

---
--- End rule definition
---
---[Open in browser](https://xmake.io/api/description/custom-rule#rule)
function rule_end() end

---
--- Adding rule dependencies.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#add_deps)
---@scope rule
---@param ... string|string[] Dependency rule name string or array
---@param options? RuleAddDepsOption
function add_deps(..., options) end

---
--- Add imported modules for all custom scripts.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#add_imports)
---@scope rule
---@param ... string|string[] Module name string or array
function add_imports(...) end

---
---TODO: document `rule.add_orders`.
---@scope rule
---@return any ... -- ToDo
function add_orders(...) end

---
--- Custom post-compilation script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#after_build)
---@scope rule
---@param script fun(target: Target): nil After build script function with target parameter
function after_build(script) end

---
--- Custom post-compilation scripts to process one source file at a time.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#after_build_file)
---@scope rule
---@param script TargetBuildFileHook After build file script function with target, sourcefile and opt parameters
function after_build_file(script) end

---
--- Customize the compiled script to process multiple source files at once.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#after_build_files)
---@scope rule
---@param script TargetBuildFilesHook After build files script function with target, sourcebatch and opt parameters
function after_build_files(script) end

---
---TODO: document `rule.after_buildcmd`.
---@scope rule
---@return any ... -- ToDo
function after_buildcmd(...) end

---
--- Customize the compiled batch script, process one source file at a time.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#after_buildcmd_file)
---@scope rule
---@param script TargetBuildcmdFileHook After build command file script function with target, batchcmds, sourcefile and opt parameters
function after_buildcmd_file(script) end

---
--- Customize the compiled batch script to process multiple source files at once.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#after_buildcmd_files)
---@scope rule
---@param script TargetBuildcmdFilesHook After build command files script function with target, batchcmds, sourcebatch and opt parameters
function after_buildcmd_files(script) end

---
--- Custom post-cleaning script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#after_clean)
---@scope rule
---@param script fun(target: Target): nil After clean script function with target parameter
function after_clean(script) end

---
--- Custom post-configuration script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#after_config)
---@scope rule
---@param script fun(target: Target): nil After config script function with target parameter
function after_config(script) end

---
--- Custom post-installation script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#after_install)
---@scope rule
---@param script fun(target: Target): nil After install script function with target parameter
function after_install(script) end

---
---TODO: document `rule.after_installcmd`.
---@scope rule
---@return any ... -- ToDo
function after_installcmd(...) end

---
--- Custom post-linking script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#after_link)
---@scope rule
---@param script fun(target: Target): nil After link script function with target parameter
function after_link(script) end

---
---TODO: document `rule.after_linkcmd`.
---@scope rule
---@return any ... -- ToDo
function after_linkcmd(...) end

---
---TODO: document `rule.after_load`.
---@scope rule
---@return any ... -- ToDo
function after_load(...) end

---
--- Custom post-packaging script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#after_package)
---@scope rule
---@param script fun(target: Target): nil After package script function with target parameter
function after_package(script) end

---
---TODO: document `rule.after_prepare`.
---@scope rule
---@return any ... -- ToDo
function after_prepare(...) end

---
---TODO: document `rule.after_prepare_file`.
---@scope rule
---@return any ... -- ToDo
function after_prepare_file(...) end

---
---TODO: document `rule.after_prepare_files`.
---@scope rule
---@return any ... -- ToDo
function after_prepare_files(...) end

---
---TODO: document `rule.after_preparecmd`.
---@scope rule
---@return any ... -- ToDo
function after_preparecmd(...) end

---
---TODO: document `rule.after_preparecmd_file`.
---@scope rule
---@return any ... -- ToDo
function after_preparecmd_file(...) end

---
---TODO: document `rule.after_preparecmd_files`.
---@scope rule
---@return any ... -- ToDo
function after_preparecmd_files(...) end

---
---TODO: document `rule.after_run`.
---@scope rule
---@return any ... -- ToDo
function after_run(...) end

---
---TODO: document `rule.after_test`.
---@scope rule
---@return any ... -- ToDo
function after_test(...) end

---
--- Custom post-uninstallation Script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#after_uninstall)
---@scope rule
---@param script fun(target: Target): nil After uninstall script function with target parameter
function after_uninstall(script) end

---
---TODO: document `rule.after_uninstallcmd`.
---@scope rule
---@return any ... -- ToDo
function after_uninstallcmd(...) end

---
--- Custom pre-compilation script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#before_build)
---@scope rule
---@param script fun(target: Target): nil Before build script function with target parameter
function before_build(script) end

---
--- Custom pre-compilation script to process one source file at a time.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#before_build_file)
---@scope rule
---@param script TargetBuildFileHook Before build file script function with target, sourcefile and opt parameters
function before_build_file(script) end

---
--- Customize pre-compilation scripts to process multiple source files at once.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#before_build_files)
---@scope rule
---@param script TargetBuildFilesHook Before build files script function with target, sourcebatch and opt parameters
function before_build_files(script) end

---
---TODO: document `rule.before_buildcmd`.
---@scope rule
---@return any ... -- ToDo
function before_buildcmd(...) end

---
--- Customize the pre-compilation batch script, process one source file at a time.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#before_buildcmd_file)
---@scope rule
---@param script TargetBuildcmdFileHook Before build command file script function with target, batchcmds, sourcefile and opt parameters
function before_buildcmd_file(script) end

---
--- Customize the pre-compilation batch script to process multiple source files at once.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#before_buildcmd_files)
---@scope rule
---@param script TargetBuildcmdFilesHook Before build command files script function with target, batchcmds, sourcebatch and opt parameters
function before_buildcmd_files(script) end

---
--- Custom pre-cleanup script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#before_clean)
---@scope rule
---@param script fun(target: Target): nil Before clean script function with target parameter
function before_clean(script) end

---
--- Custom pre-configuration script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#before_config)
---@scope rule
---@param script fun(target: Target): nil Before config script function with target parameter
function before_config(script) end

---
--- Custom pre-installation script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#before_install)
---@scope rule
---@param script fun(target: Target): nil Before install script function with target parameter
function before_install(script) end

---
---TODO: document `rule.before_installcmd`.
---@scope rule
---@return any ... -- ToDo
function before_installcmd(...) end

---
--- Custom pre-link script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#before_link)
---@scope rule
---@param script fun(target: Target): nil Before link script function with target parameter
function before_link(script) end

---
---TODO: document `rule.before_linkcmd`.
---@scope rule
---@return any ... -- ToDo
function before_linkcmd(...) end

---
---TODO: document `rule.before_load`.
---@scope rule
---@return any ... -- ToDo
function before_load(...) end

---
--- Custom the pre-package script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#before_package)
---@scope rule
---@param script fun(target: Target): nil Before package script function with target parameter
function before_package(script) end

---
---TODO: document `rule.before_prepare`.
---@scope rule
---@return any ... -- ToDo
function before_prepare(...) end

---
---TODO: document `rule.before_prepare_file`.
---@scope rule
---@return any ... -- ToDo
function before_prepare_file(...) end

---
---TODO: document `rule.before_prepare_files`.
---@scope rule
---@return any ... -- ToDo
function before_prepare_files(...) end

---
---TODO: document `rule.before_preparecmd`.
---@scope rule
---@return any ... -- ToDo
function before_preparecmd(...) end

---
---TODO: document `rule.before_preparecmd_file`.
---@scope rule
---@return any ... -- ToDo
function before_preparecmd_file(...) end

---
---TODO: document `rule.before_preparecmd_files`.
---@scope rule
---@return any ... -- ToDo
function before_preparecmd_files(...) end

---
---TODO: document `rule.before_run`.
---@scope rule
---@return any ... -- ToDo
function before_run(...) end

---
---TODO: document `rule.before_test`.
---@scope rule
---@return any ... -- ToDo
function before_test(...) end

---
--- Custom pre-uninstall script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#before_uninstall)
---@scope rule
---@param script fun(target: Target): nil Before uninstall script function with target parameter
function before_uninstall(script) end

---
---TODO: document `rule.before_uninstallcmd`.
---@scope rule
---@return any ... -- ToDo
function before_uninstallcmd(...) end

---
--- Custom compilation script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#on_build)
---@scope rule
---@param script fun(target: Target): nil Build script function with target parameter
function on_build(script) end

---
--- Customizing the build script to process one source file at a time.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#on_build_file)
---@scope rule
---@param script TargetBuildFileHook Build file script function with target, sourcefile and opt parameters
function on_build_file(script) end

---
--- Customizing the build script to process multiple source files at once.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#on_build_files)
---@scope rule
---@param script TargetBuildFilesHook Build files script function with target, sourcebatch and opt parameters
function on_build_files(script) end

---
---TODO: document `rule.on_buildcmd`.
---@scope rule
---@return any ... -- ToDo
function on_buildcmd(...) end

---
--- Custom batch compile script, process one source file at a time.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#on_buildcmd_file)
---@scope rule
---@param script TargetBuildcmdFileHook Build command file script function with target, batchcmds, sourcefile and opt parameters
function on_buildcmd_file(script) end

---
--- Customize batch compiling script, process multiple source files at once.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#on_buildcmd_files)
---@scope rule
---@param script TargetBuildcmdFilesHook Build command files script function with target, batchcmds, sourcebatch and opt parameters
function on_buildcmd_files(script) end

---
--- Custom cleanup script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#on_clean)
---@scope rule
---@param script fun(target: Target): nil Clean script function with target parameter
function on_clean(script) end

---
--- custom configuration script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#on_config)
---@scope rule
---@param script fun(target: Target): nil Configuration script function with target parameter
function on_config(script) end

---
--- Custom installation script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#on_install)
---@scope rule
---@param script fun(target: Target): nil Install script function with target parameter
function on_install(script) end

---
---TODO: document `rule.on_installcmd`.
---@scope rule
---@return any ... -- ToDo
function on_installcmd(...) end

---
--- Custom link script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#on_link)
---@scope rule
---@param script fun(target: Target): nil Link script function with target parameter
function on_link(script) end

---
---TODO: document `rule.on_linkcmd`.
---@scope rule
---@return any ... -- ToDo
function on_linkcmd(...) end

---
--- Custom load script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#on_load)
---@scope rule
---@param script fun(target: Target): nil Load script function with target parameter
function on_load(script) end

---
--- Custom packaging script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#on_package)
---@scope rule
---@param script fun(target: Target): nil Package script function with target parameter
function on_package(script) end

---
---TODO: document `rule.on_prepare`.
---@scope rule
---@return any ... -- ToDo
function on_prepare(...) end

---
---TODO: document `rule.on_prepare_file`.
---@scope rule
---@return any ... -- ToDo
function on_prepare_file(...) end

---
---TODO: document `rule.on_prepare_files`.
---@scope rule
---@return any ... -- ToDo
function on_prepare_files(...) end

---
---TODO: document `rule.on_preparecmd`.
---@scope rule
---@return any ... -- ToDo
function on_preparecmd(...) end

---
---TODO: document `rule.on_preparecmd_file`.
---@scope rule
---@return any ... -- ToDo
function on_preparecmd_file(...) end

---
---TODO: document `rule.on_preparecmd_files`.
---@scope rule
---@return any ... -- ToDo
function on_preparecmd_files(...) end

---
---TODO: document `rule.on_run`.
---@scope rule
---@return any ... -- ToDo
function on_run(...) end

---
---TODO: document `rule.on_test`.
---@scope rule
---@return any ... -- ToDo
function on_test(...) end

---
--- Custom Uninstall Script.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#on_uninstall)
---@scope rule
---@param script fun(target: Target): nil Uninstall script function with target parameter
function on_uninstall(script) end

---
---TODO: document `rule.on_uninstallcmd`.
---@scope rule
---@return any ... -- ToDo
function on_uninstallcmd(...) end

---
--- Setting the file extension type supported by the rule.
---
---[Open in browser](https://xmake.io/api/description/custom-rule#set_extensions)
---@scope rule
---@param ... string|string[] File extension string or array
function set_extensions(...) end

---
---TODO: document `rule.set_kind`.
---@scope rule
---@return any ... -- ToDo
function set_kind(...) end

---
---TODO: document `rule.set_sourcekinds`.
---@scope rule
---@return any ... -- ToDo
function set_sourcekinds(...) end
