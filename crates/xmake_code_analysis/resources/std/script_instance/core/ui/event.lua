---@meta
---[core.ui.event](https://xmake.io/api/scripts/extension-modules/core/ui/event)

---@class Event
local Event = {}

function Event:command(...) end

---
--- Dump event information for debugging.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/event#event-dump)
---@return any ... -- ToDo
function Event:dump() end

function Event:idle(...) end

---
--- Check if event is a command event with specific command.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/event#event-is_command)
---@param command string Required. Command name to check (e.g., "cm_quit", "cm_enter")
---@return any ... -- ToDo
function Event:is_command(command) end

---
--- Check if event is a keyboard event with specific key.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/event#event-is_key)
---@param key_name string Required. Name of the key to check (e.g., "Enter", "Esc", "Tab")
---@return any ... -- ToDo
function Event:is_key(key_name) end

function Event:keyboard(...) end

function Event:mouse(...) end
