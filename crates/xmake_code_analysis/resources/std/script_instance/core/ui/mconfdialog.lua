---@meta
---[core.ui.mconfdialog](https://xmake.io/api/scripts/extension-modules/core/ui/mconfdialog)

---@class Mconfdialog
local Mconfdialog = {}

---
--- Get all loaded configurations.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/mconfdialog#mconfdialog-configs)
---@return any ... -- ToDo
function Mconfdialog:configs() end

---
--- Load configuration items into the dialog.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/mconfdialog#mconfdialog-load)
---@param configs table Required. Array of configuration items (created with `menuconf.*` functions)
---@return any ... -- ToDo
function Mconfdialog:load(configs) end

---
--- Get the menu config component.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/mconfdialog#mconfdialog-menuconf)
---@return any ... -- ToDo
function Mconfdialog:menuconf() end

---
--- Handle keyboard events.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/mconfdialog#mconfdialog-on_event)
---@param e event Required. Event object
---@return any ... -- ToDo
function Mconfdialog:on_event(e) end

---
--- Show exit confirmation dialog.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/mconfdialog#mconfdialog-show_exit)
---@param message string Required. Confirmation message to display
---@return any ... -- ToDo
function Mconfdialog:show_exit(message) end

---
--- Show help dialog for the current configuration item.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/mconfdialog#mconfdialog-show_help)
---@return any ... -- ToDo
function Mconfdialog:show_help() end

---
--- Show search dialog to search configurations.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/mconfdialog#mconfdialog-show_search)
---@return any ... -- ToDo
function Mconfdialog:show_search() end
