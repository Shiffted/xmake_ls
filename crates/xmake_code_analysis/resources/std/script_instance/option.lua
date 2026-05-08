---@meta
---[option](https://xmake.io/api/scripts/option-instance)

---@class Option
local Option = {}

---
--- Add values to the option by name.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-add)
---@param key string Configuration key name
---@param value any Value to add
---@return any ... -- ToDo
function Option:add(key, value) end

---
---TODO: document `option:cachekey`.
---@return any ... -- ToDo
function Option:cachekey(...) end

---
---TODO: document `option:check`.
---@return any ... -- ToDo
function Option:check(...) end

---
--- Clear the option status, need to recheck.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-clear)
---@return any ... -- ToDo
function Option:clear() end

---
---TODO: document `option:del`.
---@return any ... -- ToDo
function Option:del(...) end

---
--- Get the specified dependent option.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-dep)
---@param name string Dependency name
---@return any ... -- ToDo
function Option:dep(name) end

---
--- Get all dependencies of the option.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-deps)
---@return any ... -- ToDo
function Option:deps() end

---
--- Get the description of the option.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-description)
---@return any ... -- ToDo
function Option:description() end

---
--- Enable or disable the option.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-enable)
---@param enable boolean Whether to enable
---@return any ... -- ToDo
function Option:enable(enable) end

---
--- Check if the option is enabled.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-enabled)
---@return any ... -- ToDo
function Option:enabled() end

---
--- Get extra configuration information.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-extraconf)
---@param name string Configuration name
---@param key string Configuration key
---@return any ... -- ToDo
function Option:extraconf(name, key) end

---
--- Get the full name of the option (with namespace).
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-fullname)
---@return any ... -- ToDo
function Option:fullname() end

---
--- Get the configuration values of the option in the description scope.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-get)
---@param key string Configuration key name
---@return any ... -- ToDo
function Option:get(key) end

---
---TODO: document `option:info`.
---@return any ... -- ToDo
function Option:info(...) end

---
--- Get the name of the option (without namespace).
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-name)
---@return any ... -- ToDo
function Option:name() end

---
--- Get the namespace of the option.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-namespace)
---@return any ... -- ToDo
function Option:namespace() end

---
---TODO: document `option:new`.
---@return any ... -- ToDo
function Option:new(...) end

---
--- Get the ordered dependencies of the option.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-orderdeps)
---@return any ... -- ToDo
function Option:orderdeps() end

---
--- Remove specified values from the option.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-remove)
---@param key string Configuration key name
---@param value any Value to remove
---@return any ... -- ToDo
function Option:remove(key, value) end

---
---TODO: document `option:script`.
---@return any ... -- ToDo
function Option:script(...) end

---
--- Set the configuration values of the option.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-set)
---@param key string Configuration key name
---@param value any Configuration value
---@return any ... -- ToDo
function Option:set(key, value) end

---
--- Set the value of the option.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-set_value)
---@param value any Option value
---@return any ... -- ToDo
function Option:set_value(value) end

---
---TODO: document `option:showmenu`.
---@return any ... -- ToDo
function Option:showmenu(...) end

---
---TODO: document `option:sourceinfo`.
---@return any ... -- ToDo
function Option:sourceinfo(...) end

---
---TODO: document `option:type`.
---@return any ... -- ToDo
function Option:type(...) end

---
--- Get the current value of the option.
---
---[Open in browser](https://xmake.io/api/scripts/option-instance#option-value)
---@return any ... -- ToDo
function Option:value() end
