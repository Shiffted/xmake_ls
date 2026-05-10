---@meta
---[option](https://xmake.io/api/description/configuration-option)

---@class OptionCxsnippetsOption
---@field name boolean? Code snippet name string
---@field code boolean? C/C++ code fragment string
---@field tryrun boolean? Whether to try running the code
---@field output boolean? Whether to capture output
---@field number boolean? Whether to parse output as number

---@alias OptionHook fun(option: Option): nil

---
--- Define an option.
---
---[Open in browser](https://xmake.io/api/description/configuration-option#option)
---@scope root
---@param name string Option name
---@param func? fun(): nil Option scoped function
---@return nil
function option(name, func) end

---TODO: add more
---@class OptionAttr

---
--- Define an option.
---
---[Open in browser](https://xmake.io/api/description/configuration-option#option)
---@scope root
---@param name string Option name
---@param attr OptionAttr Option attributes
---@return nil
function option(name, attr) end

---
--- End option definition.
---
---[Open in browser](https://xmake.io/api/description/configuration-option#option_end)
---@scope option
---@return nil
function option_end() end

---
---@scope option
---@param ... string|string[] Static library archive option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_arflags(..., options) end

---
---@scope option
---@param ... string|string[] Assembly compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_asflags(..., options) end

---
--- Add compilation options only for c code.
---
---@scope option
---@param ... string|string[] C compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_cflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#add_cfuncs)
---@scope option
---@param ... string|string[] C function name string or array
---@return nil
function add_cfuncs(...) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#add_cincludes)
---@scope option
---@param ... string|string[] Header file name string or array
---@return nil
function add_cincludes(...) end

---
---@scope option
---@param ... string|string[] C Sharp compilation option string or array, supports wildcard matching patterns
---@param options? AccessSpecifier
---@return nil
function add_csflags(..., options) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#add_csnippets)
---@scope option
---@param name string Code snippet name string
---@param code string C code fragment string
---@param options? OptionCxsnippetsOption
---@return nil
function add_csnippets(name, code, options) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#add_ctypes)
---@scope option
---@param ... string|string[] C type name string or array
---@return nil
function add_ctypes(...) end

---
---TODO: document `option.add_cuflags`.
---@scope option
---@return nil
function add_cuflags(...) end

---
---TODO: document `option.add_cugencodes`.
---@scope option
---@return nil
function add_cugencodes(...) end

---
---TODO: document `option.add_culdflags`.
---@scope option
---@return nil
function add_culdflags(...) end

---
---TODO: document `option.add_cxflags`.
---@scope option
---@return nil
function add_cxflags(...) end

---
---TODO: document `option.add_cxxflags`.
---@scope option
---@return nil
function add_cxxflags(...) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#add_cxxfuncs)
---@scope option
---@param ... string|string[] C++ function name string or array
---@return nil
function add_cxxfuncs(...) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#add_cxxincludes)
---@scope option
---@param ... string|string[] C++ header file name string or array
---@return nil
function add_cxxincludes(...) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#add_cxxsnippets)
---@scope option
---@param name string Code snippet name string
---@param code string C++ code fragment string
---@param options? OptionCxsnippetsOption
---@return nil
function add_cxxsnippets(name, code, options) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#add_cxxtypes)
---@scope option
---@param ... string|string[] C++ type name string or array
---@return nil
function add_cxxtypes(...) end

---
---TODO: document `option.add_dcflags`.
---@scope option
---@return nil
function add_dcflags(...) end

---
---TODO: document `option.add_defines`.
---@scope option
---@return nil
function add_defines(...) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#add_deps)
---@scope option
---@param ... string|string[] Dependency option name string or array
---@return nil
function add_deps(...) end

---
---TODO: document `option.add_fcflags`.
---@scope option
---@return nil
function add_fcflags(...) end

---
---TODO: document `option.add_features`.
---@scope option
---@return nil
function add_features(...) end

---
---TODO: document `option.add_frameworkdirs`.
---@scope option
---@return nil
function add_frameworkdirs(...) end

---
---TODO: document `option.add_frameworks`.
---@scope option
---@return nil
function add_frameworks(...) end

---
---TODO: document `option.add_gcflags`.
---@scope option
---@return nil
function add_gcflags(...) end

---
---TODO: document `option.add_imports`.
---@scope option
---@return nil
function add_imports(...) end

---
---TODO: document `option.add_includedirs`.
---@scope option
---@return nil
function add_includedirs(...) end

---
---TODO: document `option.add_kcflags`.
---@scope option
---@return nil
function add_kcflags(...) end

---
---TODO: document `option.add_ldflags`.
---@scope option
---@return nil
function add_ldflags(...) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#add_linkdirs)
---@scope option
---@param ... string|string[] Link directory path string or array
---@return nil
function add_linkdirs(...) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#add_links)
---@scope option
---@param ... string|string[] Library name string or array
---@return nil
function add_links(...) end

---
---TODO: document `option.add_mflags`.
---@scope option
---@return nil
function add_mflags(...) end

---
---TODO: document `option.add_mrcflags`.
---@scope option
---@return nil
function add_mrcflags(...) end

---
---TODO: document `option.add_mxflags`.
---@scope option
---@return nil
function add_mxflags(...) end

---
---TODO: document `option.add_mxxflags`.
---@scope option
---@return nil
function add_mxxflags(...) end

---
---TODO: document `option.add_ncflags`.
---@scope option
---@return nil
function add_ncflags(...) end

---
---TODO: document `option.add_pcflags`.
---@scope option
---@return nil
function add_pcflags(...) end

---
---TODO: document `option.add_rcflags`.
---@scope option
---@return nil
function add_rcflags(...) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#add_rpathdirs)
---@scope option
---@param ... string|string[] RPATH directory path string or array
---@return nil
function add_rpathdirs(...) end

---
---TODO: document `option.add_scflags`.
---@scope option
---@return nil
function add_scflags(...) end

---
---TODO: document `option.add_shflags`.
---@scope option
---@return nil
function add_shflags(...) end

---
---TODO: document `option.add_sysincludedirs`.
---@scope option
---@return nil
function add_sysincludedirs(...) end

---
---TODO: document `option.add_syslinks`.
---@scope option
---@return nil
function add_syslinks(...) end

---
---TODO: document `option.add_undefines`.
---@scope option
---@return nil
function add_undefines(...) end

---
---TODO: document `option.add_vectorexts`.
---@scope option
---@return nil
function add_vectorexts(...) end

---
---TODO: document `option.add_zcflags`.
---@scope option
---@return nil
function add_zcflags(...) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#after_check)
---@scope option
---@param script OptionHook After check script function with option parameter
---@return nil
function after_check(script) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#before_check)
---@scope option
---@param script OptionHook Before check script function with option parameter
---@return nil
function before_check(script) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#on_check)
---@scope option
---@param script OptionHook Check script function with option parameter
---@return nil
function on_check(script) end

---
--- Setting option categories, only for menu display.
---
---[Open in browser](https://xmake.io/api/description/configuration-option#set_category)
---@scope option
---@param category string Category name string
---@return nil
function set_category(category) end

---
---TODO: document `option.set_configvar`.
---@scope option
---@return nil
function set_configvar(...) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#set_default)
---@scope option
---@param value string|boolean|number Default value
---@return nil
function set_default(value) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#set_description)
---@scope option
---@param ... string|string[] Description string or array
---@return nil
function set_description(...) end

---
---TODO: document `option.set_languages`.
---@scope option
---@return nil
function set_languages(...) end

---
---TODO: document `option.set_optimize`.
---@scope option
---@return nil
function set_optimize(...) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#set_showmenu)
---@scope option
---@param showmenu boolean Whether to show in menu
---@return nil
function set_showmenu(showmenu) end

---
---[Open in browser](https://xmake.io/api/description/configuration-option#set_values)
---@scope option
---@param ... string|string[] Option value string or array
---@return nil
function set_values(...) end

---
---TODO: document `option.set_warnings`.
---@scope option
---@return nil
function set_warnings(...) end
