---@meta
---[winos](https://xmake.io/api/scripts/builtin-modules/winos)

---@class winoslib
winos = {}

---
---TODO: document `winos.ansi_cp`.
---@scope script
---@return any ... -- ToDo
function winos.ansi_cp(...) end

---
---TODO: document `winos.cmdargv`.
---@scope script
---@return any ... -- ToDo
function winos.cmdargv(...) end

---
---TODO: document `winos.console_cp`.
---@scope script
---@return any ... -- ToDo
function winos.console_cp(...) end

---
---TODO: document `winos.console_output_cp`.
---@scope script
---@return any ... -- ToDo
function winos.console_output_cp(...) end

---
---TODO: document `winos.cp_info`.
---@scope script
---@return any ... -- ToDo
function winos.cp_info(...) end

---
---TODO: document `winos.file_signature`.
---@scope script
---@return any ... -- ToDo
function winos.file_signature(...) end

---
---TODO: document `winos.inherit_handles_safely`.
---@scope script
---@return any ... -- ToDo
function winos.inherit_handles_safely(...) end

---
---TODO: document `winos.logical_drives`.
---@return any ... -- ToDo
function winos.logical_drives(...) end

---
---TODO: document `winos.oem_cp`.
---@scope script
---@return any ... -- ToDo
function winos.oem_cp(...) end

---
--- Get current system process list.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/winos#winos-processes)
---@scope script
---@return any ... -- ToDo
function winos.processes() end

---
--- Get the list of registry builds.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/winos#winos-registry_keys)
---@param pattern string Pattern string for matching registry keys
---@return any ... -- ToDo
function winos.registry_keys(pattern) end

---
--- Get the registry value.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/winos#winos-registry_query)
---@param keypath string Registry key path
---@return any ... -- ToDo
function winos.registry_query(keypath) end

---
--- Get a list of registry value names.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/winos#winos-registry_values)
---@param pattern string Pattern string for matching registry values
---@return any ... -- ToDo
function winos.registry_values(pattern) end

---
--- Set Windows process error mode.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/winos#winos-set_error_mode)
---@scope script
---@param mode integer Process error mode value (Windows API `SetErrorMode`)
---@return any ... -- ToDo
function winos.set_error_mode(mode) end

---
---TODO: document `winos.short_path`.
---@scope script
---@return any ... -- ToDo
function winos.short_path(...) end

---
--- Get windows system version.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/winos#winos-version)
---@return any ... -- ToDo
function winos.version() end
