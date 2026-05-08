---@meta
---[toolchain](https://xmake.io/api/description/custom-toolchain)

---
--- Define a toolchain
---
---[Open in browser](https://xmake.io/api/description/custom-toolchain#toolchain)
---@param name string Toolchain name
---@param func? fun(): nil Toolchain scoped function
function toolchain(name, func) end

---
--- Define a toolchain
---
---[Open in browser](https://xmake.io/api/description/custom-toolchain#toolchain)
---@param name string Toolchain name
---@param attr table Toolchain attributes
function toolchain(name, attr) end

---
--- End toolchain definition
---
---[Open in browser](https://xmake.io/api/description/custom-toolchain#toolchain)
function toolchain_end() end

---
---TODO: document `toolchain.add_arflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_arflags(...) end

---
---TODO: document `toolchain.add_asflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_asflags(...) end

---
---TODO: document `toolchain.add_cflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_cflags(...) end

---
---TODO: document `toolchain.add_csflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_csflags(...) end

---
---TODO: document `toolchain.add_cuflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_cuflags(...) end

---
---TODO: document `toolchain.add_cugencodes`.
---@scope toolchain
---@return any ... -- ToDo
function add_cugencodes(...) end

---
---TODO: document `toolchain.add_culdflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_culdflags(...) end

---
---TODO: document `toolchain.add_cxflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_cxflags(...) end

---
---TODO: document `toolchain.add_cxxflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_cxxflags(...) end

---
---TODO: document `toolchain.add_dcflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_dcflags(...) end

---
---TODO: document `toolchain.add_defines`.
---@scope toolchain
---@return any ... -- ToDo
function add_defines(...) end

---
---TODO: document `toolchain.add_fcflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_fcflags(...) end

---
---TODO: document `toolchain.add_frameworkdirs`.
---@scope toolchain
---@return any ... -- ToDo
function add_frameworkdirs(...) end

---
---TODO: document `toolchain.add_frameworks`.
---@scope toolchain
---@return any ... -- ToDo
function add_frameworks(...) end

---
---TODO: document `toolchain.add_gcflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_gcflags(...) end

---
---TODO: document `toolchain.add_includedirs`.
---@scope toolchain
---@return any ... -- ToDo
function add_includedirs(...) end

---
---TODO: document `toolchain.add_kcflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_kcflags(...) end

---
---TODO: document `toolchain.add_ldflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_ldflags(...) end

---
---TODO: document `toolchain.add_linkdirs`.
---@scope toolchain
---@return any ... -- ToDo
function add_linkdirs(...) end

---
---TODO: document `toolchain.add_links`.
---@scope toolchain
---@return any ... -- ToDo
function add_links(...) end

---
---TODO: document `toolchain.add_mflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_mflags(...) end

---
---TODO: document `toolchain.add_mrcflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_mrcflags(...) end

---
---TODO: document `toolchain.add_mxflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_mxflags(...) end

---
---TODO: document `toolchain.add_mxxflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_mxxflags(...) end

---
---TODO: document `toolchain.add_ncflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_ncflags(...) end

---
---TODO: document `toolchain.add_pcflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_pcflags(...) end

---
---TODO: document `toolchain.add_rcflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_rcflags(...) end

---
---TODO: document `toolchain.add_rpathdirs`.
---@scope toolchain
---@return any ... -- ToDo
function add_rpathdirs(...) end

---
---TODO: document `toolchain.add_runenvs`.
---@scope toolchain
---@return any ... -- ToDo
function add_runenvs(...) end

---
---TODO: document `toolchain.add_scflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_scflags(...) end

---
---TODO: document `toolchain.add_shflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_shflags(...) end

---
---TODO: document `toolchain.add_sysincludedirs`.
---@scope toolchain
---@return any ... -- ToDo
function add_sysincludedirs(...) end

---
---TODO: document `toolchain.add_syslinks`.
---@scope toolchain
---@return any ... -- ToDo
function add_syslinks(...) end

---
---TODO: document `toolchain.add_toolset`.
---@scope toolchain
---@return any ... -- ToDo
function add_toolset(...) end

---
---TODO: document `toolchain.add_undefines`.
---@scope toolchain
---@return any ... -- ToDo
function add_undefines(...) end

---
---TODO: document `toolchain.add_zcflags`.
---@scope toolchain
---@return any ... -- ToDo
function add_zcflags(...) end

---
--- Detection toolchain.
---
---[Open in browser](https://xmake.io/api/description/custom-toolchain#on_check)
---@scope toolchain
---@param script fun(toolchain: Toolchain): string Check script function with toolchain parameter
function on_check(script) end

---
--- Load toolchain.
---
---[Open in browser](https://xmake.io/api/description/custom-toolchain#on_load)
---@scope toolchain
---@param script fun(toolchain: Toolchain): nil Load script function with toolchain parameter
function on_load(script) end

---
---TODO: document `toolchain.set_archs`.
---@scope toolchain
---@return any ... -- ToDo
function set_archs(...) end

---
--- Set toolchain bin directory path.
---
---[Open in browser](https://xmake.io/api/description/custom-toolchain#set_bindir)
---@scope toolchain
---@param bindir string Binary directory path string
function set_bindir(bindir) end

---
---TODO: document `toolchain.set_cross`.
---@scope toolchain
---@return any ... -- ToDo
function set_cross(...) end

---
---TODO: document `toolchain.set_description`.
---@scope toolchain
---@return any ... -- ToDo
function set_description(...) end

---
---TODO: document `toolchain.set_formats`.
---@scope toolchain
---@return any ... -- ToDo
function set_formats(...) end

---
---TODO: document `toolchain.set_homepage`.
---@scope toolchain
---@return any ... -- ToDo
function set_homepage(...) end

---
--- Set toolchain type.
---
---[Open in browser](https://xmake.io/api/description/custom-toolchain#set_kind)
---@scope toolchain
---@param kind string Toolchain type: "standalone"
function set_kind(kind) end

---
---TODO: document `toolchain.set_runtimes`.
---@scope toolchain
---@return any ... -- ToDo
function set_runtimes(...) end

---
--- Set toolchain sdk directory path.
---
---[Open in browser](https://xmake.io/api/description/custom-toolchain#set_sdkdir)
---@scope toolchain
---@param sdkdir string SDK directory path string
function set_sdkdir(sdkdir) end

---
--- Set Tool Set.
---
---[Open in browser](https://xmake.io/api/description/custom-toolchain#set_toolset)
---@scope toolchain
---@param tool string Tool name string (cc, cxx, ld, sh, ar, ex, strip, mm, mxx, as)
---@param ... string|string[] Tool program name string or array
function set_toolset(tool, ...) end
