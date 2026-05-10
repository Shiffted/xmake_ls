---@meta
---[target](https://xmake.io/api/description/project-target)

---@class TargetHeaderfilesOption
---@field prefixdir string? Installation prefix directory
---@field rootdir string? Root directory
---@field filename string? Filename

---@class TargetBuildOpt
---@field origin fun(target: Target, file: string|SourceBatch, opt: TargetBuildOpt): nil? Run built-in build script

---@class SourceBatch
---@field sourcekind string? Type of this batch of source files
---@field rulename string? Build rule name
---@field sourcefiles string[]? Get the list of source files
---@field objectfiles string[]? Get the list of object files
---@field dependfiles string[]? Get the list of dependent files

--- TODO: fix signature.
--- Built-in batch commands.
---@class BatchCommand
---@field show fun(message: string, ...: string): nil? Print messages
---@field show_progress fun(progress: number, message: string, file: string): nil? Print progress
---@field vrunv fun(cmd: string, args: string[]): nil? Run command with run environments
---@field mkdir fun(dir: string): nil? Create directory
---@field compile fun(source: string, object: string, option: table): nil? Compile source files
---@field link fun(object: string, target: string, option: table): nil? Link object files
---@field add_depfiles fun(file: string, ...: string): nil? Add depending files
---@field add_depvalues fun(value: string, ...: string): nil? Add depending values
---@field add_depmtime fun(...: any): nil?
---@field add_depcache fun(...: any): nil?

---@alias TargetHook fun(target: Target): nil

---@alias TargetBuildFileHook fun(target: Target, sourcefile: string, opt: TargetBuildOpt): nil
---@alias TargetBuildFilesHook fun(target: Target, soucebatch: SourceBatch, opt: TargetBuildOpt): nil

---@alias TargetBuildcmdFileHook fun(target: Target, cmds: BatchCommand, sourcefile: string, opt: TargetBuildOpt): nil
---@alias TargetBuildcmdFilesHook fun(target: Target, cmds: BatchCommand, soucebatch: SourceBatch, opt: TargetBuildOpt): nil

---@alias TargetOnTestHook fun(target: Target, opt: TargetOnTestOpt): boolean

---
--- Define a project target.
---
---[Open in browser](https://xmake.io/api/description/project-target#target)
---@scope root
---@param name string Target name
---@param func? fun(): nil Target scoped function
---@return nil
function target(name, func) end

---TODO: add more
---@class TargetAttr
---@field kind TargetKind? Set target kind
---@field files string[]? Set target files
---@field includedirs string? Set target include directories

---
--- Define a project target.
---
---[Open in browser](https://xmake.io/api/description/project-target#target)
---@scope root
---@param name string Target name
---@param attr TargetAttr Target attributes
---@return nil
function target(name, attr) end

---
--- End target definition.
---
---[Open in browser](https://xmake.io/api/description/project-target#target_end)
---@scope target
---@return nil
function target_end() end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_arflags)
---@scope target
---@param ... string|string[] Static library archive option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_arflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_asflags)
---@scope target
---@param ... string|string[] Assembly compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_asflags(..., options) end

---
--- Add compilation options only for c code.
---
---[Open in browser](https://xmake.io/api/description/project-target#add_cflags)
---@scope target
---@param ... string|string[] C compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_cflags(..., options) end

---
---TODO: document `target.add_cleanfiles`.
---@scope target
---@return nil
function add_cleanfiles(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_configfiles)
---@scope target
---@param ... string|string[] Configuration file path string or array, supports wildcard matching patterns
---@param options? TargetHeaderfilesOption
---@return nil
function add_configfiles(..., options) end

---
---@scope target
---@param ... string|string[] C Sharp compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_csflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_cuflags)
---@scope target
---@param ... string|string[] CUDA compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_cuflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_cugencodes)
---@scope target
---@param ... string|string[] CUDA device gencode setting string or array, such as "sm_30", "sm_50"
---@param options? AccessSpecifier
---@return nil
function add_cugencodes(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_culdflags)
---@scope target
---@param ... string|string[] CUDA device link option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_culdflags(..., options) end

---
--- Add compilation options to c/c++ code at the same time.
---
---[Open in browser](https://xmake.io/api/description/project-target#add_cxflags)
---@scope target
---@param ... string|string[] C/C++ compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_cxflags(..., options) end

---
--- Add compilation options only to c++ code
---
---[Open in browser](https://xmake.io/api/description/project-target#add_cxxflags)
---@scope target
---@param ... string|string[] C++ compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_cxxflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_dcflags)
---@scope target
---@param ... string|string[] D language compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_dcflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_defines)
---@scope target
---@param ... string|string[] Macro definition string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_defines(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_deps)
---@scope target
---@param ... string|string[] Dependency target name string or array, supports wildcard matching patterns
---@param options? InheritSpecifier
---@return nil
function add_deps(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_embeddirs)
---@scope target
---@param ... string|string[] #embed search directory string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_embeddirs(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_extrafiles)
---@scope target
---@param ... string|string[] Extra file path string or array, such as "assets/other.txt"
---@return nil
function add_extrafiles(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_fcflags)
---@scope target
---@param ... string|string[] Fortran compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_fcflags(..., options) end

---
--- plain: flat mode.
---
---[Open in browser](https://xmake.io/api/description/project-target#add_filegroups)
---@scope target
---@param name string Group name string, such as "source", "header", "test"
---@param ... string|string[] Source file path string or array, supports wildcard matching patterns
---@return nil
function add_filegroups(name, ...) end

--- TODO: add other flags
---@class BuildFlags
---@field cflags string|string[]?
---@field cxflags string|string[]?
---@field cxxflags string|string[]?

--- TODO: add other flags
---@class TargetAddFilesOption
---@field defines string|string[]? Macro definition string or array, set compilation macro definitions for specified files
---@field languages string|string[]? Language standard string, such as "c99", "c++11", etc.
---@field includedirs string|string[]? Header file search directory string or array
---@field rules string|string[]? Custom build rule name string
---@field force boolean|BuildFlags? Force compilation option object, disable automatic detection, can contain various compilation options
---@field sourcekind string? Force specified source file type string, such as "cc", "cxx", etc.
---@field cflags string|string[]?
---@field cxflags string|string[]?
---@field cxxflags string|string[]?

---
---[Open in browser](https://xmake.io/api/description/project-target#add_files)
---@scope target
---@param ... string|string[] File path string or file path array, supports wildcard matching patterns
---@param options? TargetAddFilesOption
---@return nil
function add_files(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_forceincludes)
---@scope target
---@param ... string|string[] Header file path string or array, such as "config.h"
---@param options? AccessSpecifier
---@return nil
function add_forceincludes(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_frameworkdirs)
---@scope target
---@param ... string|string[] Framework search directory string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_frameworkdirs(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_frameworks)
---@scope target
---@param ... string|string[] Framework name string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_frameworks(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_gcflags)
---@scope target
---@param ... string|string[] Go compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_gcflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_headerfiles)
---@scope target
---@param ... string|string[] Header file path string or array, supports wildcard matching patterns
---@param options? TargetHeaderfilesOption
---@return nil
function add_headerfiles(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_imports)
---@scope target
---@return nil
function add_imports() end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_includedirs)
---@scope target
---@param ... string|string[] Header file search directory string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_includedirs(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_installfiles)
---@scope target
---@param ... string|string[] Installation file path string or array, supports wildcard matching patterns
---@param options? TargetHeaderfilesOption
---@return nil
function add_installfiles(..., options) end

---
---TODO: document `target.add_kcflags`.
---@scope target
---@return nil
function add_kcflags(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_languages)
---@scope target
---@param ... string|string[] Language standard string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_languages(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_ldflags)
---@scope target
---@param ... string|string[] Link option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_ldflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_linkdirs)
---@scope target
---@param ... string|string[] Link library search directory string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_linkdirs(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_linkgroups)
---@scope target
---@param ... string|string[] Link group name string or array, such as "group1", "group2"
---@param options? AccessSpecifier
---@return nil
function add_linkgroups(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_linkorders)
---@scope target
---@param ... string|string[] Link order string or array, such as "dep1", "dep2"
---@return nil
function add_linkorders(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_links)
---@scope target
---@param ... string|string[] Link library name string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_links(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_mflags)
---@scope target
---@param ... string|string[] ObjC compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_mflags(..., options) end

---
---TODO: document `target.add_mrcflags`.
---@scope target
---@return nil
function add_mrcflags(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_mxflags)
---@scope target
---@param ... string|string[] ObjC/ObjC++ compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_mxflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_mxxflags)
---@scope target
---@param ... string|string[] ObjC++ compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_mxxflags(..., options) end

---
---TODO: document `target.add_ncflags`.
---@scope target
---@return nil
function add_ncflags(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_options)
---@scope target
---@return nil
function add_options() end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_packages)
---@scope target
---@param ... string|string[] Package name string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_packages(..., options) end

---
---TODO: document `target.add_pcflags`.
---@scope target
---@return nil
function add_pcflags(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_rcflags)
---@scope target
---@param ... string|string[] Rust compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_rcflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_rpathdirs)
---@scope target
---@param ... string|string[] Runtime library search directory string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_rpathdirs(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_rules)
---@scope target
---@param ... string|string[] Rule name string or array, such as "markdown"
---@param options? AccessSpecifier
---@return nil
function add_rules(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_runenvs)
---@scope target
---@param name string Environment variable name string, such as "PATH", "LD_LIBRARY_PATH"
---@param ... string|string[] Environment variable value string or array, supports multiple values
---@return nil
function add_runenvs(name, ...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_scflags)
---@scope target
---@param ... string|string[] Swift compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_scflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_shflags)
---@scope target
---@param ... string|string[] Dynamic library link option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_shflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_sysincludedirs)
---@scope target
---@param ... string|string[] System header file search directory string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_sysincludedirs(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_syslinks)
---@scope target
---@param ... string|string[] System link library name string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_syslinks(..., options) end

--- TODO: add other fields
---@class TargetAddTestsOption
---@field kind string?
---@field group string?
---@field files string|string[]?
---@field remove_files string|string[]?
---@field runargs string|string[]? Test run argument
---@field rundir string?
---@field runenvs table? Test run environment variable
---@field packages string|string[]?
---@field defines string|string[]?
---@field run_timeout number? Test timeout time in seconds
---@field build_should_pass boolean?
---@field build_should_fail boolean?
---@field pass_outputs string|string[]?
---@field fail_outputs string|string[]?
---@field pass_output_files string|string[]?
---@field fail_output_files string|string[]?
---@field plain boolean?
---@field trim_output boolean?
---@field realtime_output boolean?
---@field should_fail boolean?
---@field languages string|string[]?

---
---[Open in browser](https://xmake.io/api/description/project-target#add_tests)
---@scope target
---@param test string|string[] Test case name string or array, such as "test1", "test2"
---@param options? TargetAddTestsOption
---@return nil
function add_tests(test, options) end

---
---TODO: document `target.add_toolchains`.
---@scope target
---@return nil
function add_toolchains(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_undefines)
---@scope target
---@param ... string|string[] Macro definition name string or array, such as "DEBUG"
---@param options? AccessSpecifier
---@return nil
function add_undefines(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_values)
---@scope target
---@param name string Configuration name string, such as "markdown_flags"
---@param ... any Configuration value, can be any type
---@return nil
function add_values(name, ...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_vectorexts)
---@scope target
---@param ... string|string[] Vector extension instruction string or array, such as "mmx", "neon", "avx"
---@param options? AccessSpecifier
---@return nil
function add_vectorexts(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#add_zcflags)
---@scope target
---@param ... string|string[] Zig compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_zcflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#after_build)
---@scope target
---@param script TargetHook After build script function, receives target parameter
---@return nil
function after_build(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#after_build_file)
---@scope target
---@param script TargetBuildFileHook After build single file script function, receives target, sourcefile, opt parameters
---@return nil
function after_build_file(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#after_build_files)
---@scope target
---@param script TargetBuildFilesHook After build files script function, receives target, sourcebatch, opt parameters
---@return nil
function after_build_files(script) end

---
---TODO: document `target.after_buildcmd`.
---@scope target
---@return nil
function after_buildcmd(...) end

---
---TODO: document `target.after_buildcmd_file`.
---@scope target
---@return nil
function after_buildcmd_file(...) end

---
---TODO: document `target.after_buildcmd_files`.
---@scope target
---@return nil
function after_buildcmd_files(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#after_clean)
---@scope target
---@param script TargetHook After clean script function, receives target parameter
---@return nil
function after_clean(script) end

---
---TODO: document `target.after_config`.
---@scope target
---@return nil
function after_config(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#after_install)
---@scope target
---@param script TargetHook After install script function, receives target parameter
---@return nil
function after_install(script) end

---
---TODO: document `target.after_installcmd`.
---@scope target
---@return nil
function after_installcmd(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#after_link)
---@scope target
---@param script TargetHook After link script function, receives target parameter
---@return nil
function after_link(script) end

---
---TODO: document `target.after_linkcmd`.
---@scope target
---@return nil
function after_linkcmd(...) end

---
---TODO: document `target.after_load`.
---@scope target
---@return nil
function after_load(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#after_package)
---@scope target
---@param script TargetHook After package script function, receives target parameter
---@return nil
function after_package(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#after_prepare)
---@scope target
---@param script TargetHook After prepare script function, receives target parameter
---@return nil
function after_prepare(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#after_prepare_file)
---@scope target
---@param script TargetBuildFileHook After prepare single file script function, receives target, sourcefile, opt parameters
---@return nil
function after_prepare_file(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#after_prepare_files)
---@scope target
---@param script TargetBuildFilesHook After prepare batch files script function, receives target, sourcebatch, opt parameters
---@return nil
function after_prepare_files(script) end

---
---TODO: document `target.after_preparecmd`.
---@scope target
---@return nil
function after_preparecmd(...) end

---
---TODO: document `target.after_preparecmd_file`.
---@scope target
---@return nil
function after_preparecmd_file(...) end

---
---TODO: document `target.after_preparecmd_files`.
---@scope target
---@return nil
function after_preparecmd_files(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#after_run)
---@scope target
---@param script TargetHook After run script function, receives target parameter
---@return nil
function after_run(script) end

---
---TODO: document `target.after_test`.
---@scope target
---@return nil
function after_test(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#after_uninstall)
---@scope target
---@param script TargetHook After uninstall script function, receives target parameter
---@return nil
function after_uninstall(script) end

---
---TODO: document `target.after_uninstallcmd`.
---@scope target
---@return nil
function after_uninstallcmd(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#before_build)
---@scope target
---@param script TargetHook Before build script function, receives target parameter
---@return nil
function before_build(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#before_build_file)
---@scope target
---@param script TargetBuildFileHook Before build single file script function, receives target, sourcefile, opt parameters
---@return nil
function before_build_file(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#before_build_files)
---@scope target
---@param script TargetBuildFilesHook Before build files script function, receives target, sourcebatch, opt parameters
---@return nil
function before_build_files(script) end

---
---TODO: document `target.before_buildcmd`.
---@scope target
---@return nil
function before_buildcmd(...) end

---
---TODO: document `target.before_buildcmd_file`.
---@scope target
---@return nil
function before_buildcmd_file(...) end

---
---TODO: document `target.before_buildcmd_files`.
---@scope target
---@return nil
function before_buildcmd_files(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#before_clean)
---@scope target
---@param script TargetHook Before clean script function, receives target parameter
---@return nil
function before_clean(script) end

---
---TODO: document `target.before_config`.
---@scope target
---@return nil
function before_config(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#before_install)
---@scope target
---@param script TargetHook Before install script function, receives target parameter
---@return nil
function before_install(script) end

---
---TODO: document `target.before_installcmd`.
---@scope target
---@return nil
function before_installcmd(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#before_link)
---@scope target
---@param script TargetHook Before link script function, receives target parameter
---@return nil
function before_link(script) end

---
---TODO: document `target.before_linkcmd`.
---@scope target
---@return nil
function before_linkcmd(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#before_package)
---@scope target
---@param script TargetHook Before package script function, receives target parameter
---@return nil
function before_package(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#before_prepare)
---@scope target
---@param script TargetHook Before prepare script function, receives target parameter
---@return nil
function before_prepare(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#before_prepare_file)
---@scope target
---@param script TargetBuildFileHook Before prepare single file script function, receives target, sourcefile, opt parameters
---@return nil
function before_prepare_file(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#before_prepare_files)
---@scope target
---@param script TargetBuildFilesHook Before prepare batch files script function, receives target, sourcebatch, opt parameters
---@return nil
function before_prepare_files(script) end

---
---TODO: document `target.before_preparecmd`.
---@scope target
---@return nil
function before_preparecmd(...) end

---
---TODO: document `target.before_preparecmd_file`.
---@scope target
---@return nil
function before_preparecmd_file(...) end

---
---TODO: document `target.before_preparecmd_files`.
---@scope target
---@return nil
function before_preparecmd_files(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#before_run)
---@scope target
---@param script TargetHook Before run script function, receives target parameter
---@return nil
function before_run(script) end

---
---TODO: document `target.before_test`.
---@scope target
---@return nil
function before_test(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#before_uninstall)
---@scope target
---@param script TargetHook Before uninstall script function, receives target parameter
---@return nil
function before_uninstall(script) end

---
---TODO: document `target.before_uninstallcmd`.
---@scope target
---@return nil
function before_uninstallcmd(...) end

---
---TODO: document `target.del_files`.
---@scope target
---@return nil
function del_files(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#on_build)
---@scope target
---@param script TargetHook Build script function, receives target parameter
---@return nil
function on_build(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#on_build_file)
---@scope target
---@param script TargetBuildFileHook Single file build script function, receives target, sourcefile, opt parameters
---@return nil
function on_build_file(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#on_build_files)
---@scope target
---@param script TargetBuildFilesHook Multi-file build script function, receives target, sourcebatch, opt parameters
---@return nil
function on_build_files(script) end

---
---TODO: document `target.on_buildcmd`.
---@scope target
---@return nil
function on_buildcmd(...) end

---
---TODO: document `target.on_buildcmd_file`.
---@scope target
---@return nil
function on_buildcmd_file(...) end

---
---TODO: document `target.on_buildcmd_files`.
---@scope target
---@return nil
function on_buildcmd_files(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#on_clean)
---@scope target
---@param script TargetHook Clean script function, receives target parameter
---@return nil
function on_clean(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#on_config)
---@scope target
---@param script TargetHook Configuration script function, receives target parameter
---@return nil
function on_config(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#on_install)
---@scope target
---@param script TargetHook Install script function, receives target parameter
---@return nil
function on_install(script) end

---
---TODO: document `target.on_installcmd`.
---@scope target
---@return nil
function on_installcmd(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#on_link)
---@scope target
---@param script TargetHook Link script function, receives target parameter
---@return nil
function on_link(script) end

---
---TODO: document `target.on_linkcmd`.
---@scope target
---@return nil
function on_linkcmd(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#on_load)
---@scope target
---@param script TargetHook Load script function, receives target parameter
---@return nil
function on_load(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#on_package)
---@scope target
---@param script TargetHook Package script function, receives target parameter
---@return nil
function on_package(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#on_prepare)
---@scope target
---@param script fun(target: Target, opt: table) Prepare phase script function, receives target, opt parameters
---@return nil
function on_prepare(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#on_prepare_file)
---@scope target
---@param script TargetBuildFileHook Single file processing script function, receives target, sourcefile, opt parameters
---@return nil
function on_prepare_file(script) end

---@class TargetOnPrepareFilesOption
---@field jobgraph boolean? Whether to enable parallel task processing

---
---[Open in browser](https://xmake.io/api/description/project-target#on_prepare_files)
---@scope target
---@param script fun(target: Target, jobgraph: Jobgraph, soucebatch: SourceBatch, opt: table) Batch file processing script function, receives target, jobgraph, sourcebatch, opt parameters
---@param options? TargetOnPrepareFilesOption
---@return nil
function on_prepare_files(script, options) end

---
---TODO: document `target.on_preparecmd`.
---@scope target
---@return nil
function on_preparecmd(...) end

---
---TODO: document `target.on_preparecmd_file`.
---@scope target
---@return nil
function on_preparecmd_file(...) end

---
---TODO: document `target.on_preparecmd_files`.
---@scope target
---@return nil
function on_preparecmd_files(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#on_run)
---@scope target
---@param script TargetHook Run script function, receives target parameter
---@return nil
function on_run(script) end

--- TODO: specify types
---@class TargetOnTestOpt
---@field name any
---@field runenvs any
---@field runargs any
---@field pass_outputs any

---
---[Open in browser](https://xmake.io/api/description/project-target#on_run)
---@scope target
---@param script TargetOnTestHook Test script function
---@return nil
function on_test(script) end

---
---[Open in browser](https://xmake.io/api/description/project-target#on_uninstall)
---@scope target
---@param script TargetHook Uninstall script function, receives target parameter
---@return nil
function on_uninstall(script) end

---
---TODO: document `target.on_uninstallcmd`.
---@scope target
---@return nil
function on_uninstallcmd(...) end

---
---TODO: document `target.remove_configfiles`.
---@scope target
---@return nil
function remove_configfiles(...) end

---
---TODO: document `target.remove_extrafiles`.
---@scope target
---@return nil
function remove_extrafiles(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#remove_files)
---@scope target
---@param ... string|string[] File path string or file path array, supports wildcard matching patterns
---@return nil
function remove_files(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#remove_headerfiles)
---@scope target
---@param ... string|string[] Header file path string or array, supports wildcard matching patterns
---@return nil
function remove_headerfiles(...) end

---
---TODO: document `target.remove_installfiles`.
---@scope target
---@return nil
function remove_installfiles(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_arch)
---@scope target
---@param arch string Architecture name string, such as "x86", "x64", "arm64", "armv7"
---@return nil
function set_arch(arch) end

---
---TODO: document `target.set_autogendir`.
---@scope target
---@return nil
function set_autogendir(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_basename)
---@scope target
---@param basename string Target file base name string
---@return nil
function set_basename(basename) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_configdir)
---@scope target
---@param configdir string Template configuration file output directory path string
---@return nil
function set_configdir(configdir) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_configvar)
---@scope target
---@param name string Configuration variable name string, such as "HAS_FOO"
---@param value any Configuration variable value, can be any type
---@return nil
function set_configvar(name, value) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_default)
---@scope target
---@param default boolean Whether to mark as default build target, true means default build, false means not default build
---@return nil
function set_default(default) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_dependir)
---@scope target
---@return nil
function set_dependir() end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_enabled)
---@scope target
---@param enabled boolean Whether to enable the target, true means enabled, false means disabled
---@return nil
function set_enabled(enabled) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_encodings)
---@scope target
---@param ... string|string[] Encoding string or array, such as "utf-8", "gb2312"
---@return nil
function set_encodings(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_exceptions)
---@scope target
---@param ... string|string[] Exception mode string or array, such as "cxx", "objc", "no-cxx"
---@return nil
function set_exceptions(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_extension)
---@scope target
---@param extension string Target file extension string, such as ".dll" or ".so"
---@return nil
function set_extension(extension) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_filename)
---@scope target
---@param filename string Target file full name string, including prefix and suffix
---@return nil
function set_filename(filename) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_fpmodels)
---@scope target
---@param ... string|string[] Float-point mode string or array, optional values: fast, strict, except, precise
---@param options? AccessSpecifier
---@return nil
function set_fpmodels(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_group)
---@scope target
---@param group string Group name string, such as "test", "libs", "tools"
---@return nil
function set_group(group) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_installdir)
---@scope target
---@param installdir string Installation directory path string
---@return nil
function set_installdir(installdir) end

---
--- Executable file type.
---
---[Open in browser](https://xmake.io/api/description/project-target#set_kind)
---@scope target
---@param kind string Target type string, specifies the type of compilation target
---@return nil
function set_kind(kind) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_languages)
---@scope target
---@param ... string|string[] Language standard string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function set_languages(..., options) end

---
---TODO: document `target.set_license`.
---@scope target
---@return nil
function set_license(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_objectdir)
---@scope target
---@return nil
function set_objectdir() end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_optimize)
---@scope target
---@param optimize string Optimization level string, optional values: none, fast, faster, fastest, smallest, aggressive
---@return nil
function set_optimize(optimize) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_options)
---@scope target
---@param ... string|string[] Option name string or array, supports wildcard matching patterns
---@return nil
function set_options(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_pcheader)
---@scope target
---@param header string C precompiled header file path string
---@return nil
function set_pcheader(header) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_pcxxheader)
---@scope target
---@param header string C++ precompiled header file path string
---@return nil
function set_pcxxheader(header) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_plat)
---@scope target
---@param plat string Platform name string, such as "linux", "macosx", "windows", "android"
---@return nil
function set_plat(plat) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_pmheader)
---@scope target
---@param header string ObjC precompiled header file path string
---@return nil
function set_pmheader(header) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_pmxxheader)
---@scope target
---@param header string ObjC++ precompiled header file path string
---@return nil
function set_pmxxheader(header) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_policy)
---@scope target
---@param policy string Policy name string, such as "check.auto_ignore_flags", "build.warning"
---@param value boolean Policy value, true means enable, false means disable
---@return nil
function set_policy(policy, value) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_prefixdir)
---@scope target
---@param prefixdir string Installation prefix subdirectory path string
---@return nil
function set_prefixdir(prefixdir) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_prefixname)
---@scope target
---@param prefixname string Target file prefix name string, such as "lib" or ""
---@return nil
function set_prefixname(prefixname) end

---
---TODO: document `target.set_rules`.
---@scope target
---@return nil
function set_rules(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_runargs)
---@scope target
---@param ... string|string[] Run argument string or array, such as "-x", "--arg1=val"
---@return nil
function set_runargs(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_rundir)
---@scope target
---@param rundir string Running directory path string
---@return nil
function set_rundir(rundir) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_runenv)
---@scope target
---@param name string Environment variable name string, such as "PATH", "LD_LIBRARY_PATH"
---@param value string Environment variable value string
---@return nil
function set_runenv(name, value) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_runtimes)
---@scope target
---@param ... string|string[] Runtime library string or array, such as "MT", "MD", "MTd", "MDd"
---@return nil
function set_runtimes(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_strip)
---@scope target
---@param strip string Strip mode string, optional values: debug, all
---@return nil
function set_strip(strip) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_suffixname)
---@scope target
---@param suffixname string Target file suffix name string, such as "-d" or ""
function set_suffixname(suffixname) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_symbols)
---@scope target
---@param symbols string Symbol mode string, optional values: debug, hidden, none
---@param options? AccessSpecifier
---@return nil
function set_symbols(symbols, options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_targetdir)
---@scope target
---@return nil
function set_targetdir() end

--- TODO: add other fields?
---@class TargetSetToolchainsOption
---@field vs string? Visual Studio version, such as "2022", "2025"
---@field plat string? Platform name, such as "android", "ios"
---@field arch string? Architecture name, such as "arm64", "x64"
---@field clang boolean? Use Clang compiler in MinGW toolchain
---@field gcc boolean? Use GCC compiler in Android NDK toolchain
---@field vs_sdkver string? Visual Studio SDK version
---@field vs_toolset string? Visual Studio toolset version

---
---[Open in browser](https://xmake.io/api/description/project-target#set_toolchains)
---@scope target
---@param ... string|string[] Toolchain name string or array, such as "gcc", "clang", "msvc", "ndk[gcc]", "mingw[clang]@llvm-mingw", "msvc[vs=2025]"
---@param options? TargetSetToolchainsOption
---@return nil
function set_toolchains(..., options) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_toolset)
---@scope target
---@param toolname string Tool name string, such as "cc", "cxx", "ld", "ar"
---@param tool string Tool path string, such as "/usr/bin/gcc"
---@return nil
function set_toolset(toolname, tool) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_values)
---@scope target
---@param name string Configuration name string, such as "markdown_flags"
---@param ... any Configuration value, can be any type
---@return nil
function set_values(name, ...) end

---
---TODO: document `target.set_version`.
---@scope target
---@return nil
function set_version(...) end

---
---[Open in browser](https://xmake.io/api/description/project-target#set_warnings)
---@scope target
---@param warnings string Warning level string, optional values: none, less, more, all, error
---@param options? AccessSpecifier
---@return nil
function set_warnings(warnings, options) end
