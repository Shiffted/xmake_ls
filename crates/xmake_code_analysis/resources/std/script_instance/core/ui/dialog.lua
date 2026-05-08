---@meta
---[core.ui.dialog](https://xmake.io/api/scripts/extension-modules/core/ui/dialog)

---@class Dialog
local Dialog = {}

---
--- Set dialog background color.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/dialog#dialog-background_set)
---@param color string Required. Color name (e.g., "blue", "red")
---@return any ... -- ToDo
function Dialog:background_set(color) end

---
--- Get a specific button by name.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/dialog#dialog-button)
---@param name string Required. Button name string
---@return any ... -- ToDo
function Dialog:button(name) end

---
--- Add a button to the dialog.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/dialog#dialog-button_add)
---@param name string Required. Button name string
---@param text string Required. Button display text
---@param command string|function Required. Command string or function to execute when clicked
---@return any ... -- ToDo
function Dialog:button_add(name, text, command) end

---
--- Select a button by name.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/dialog#dialog-button_select)
---@param name string Required. Button name to select
---@return any ... -- ToDo
function Dialog:button_select(name) end

---
--- Get the buttons panel.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/dialog#dialog-buttons)
---@return any ... -- ToDo
function Dialog:buttons() end

---
--- Handle dialog events.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/dialog#dialog-on_event)
---@param e event Required. Event object
---@return any ... -- ToDo
function Dialog:on_event(e) end

---
--- Close the dialog.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/dialog#dialog-quit)
---@return any ... -- ToDo
function Dialog:quit() end

---
--- Show or hide the dialog.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/dialog#dialog-show)
---@param visible boolean Required. Show or hide the dialog
---@param opt? table
---@return any ... -- ToDo
function Dialog:show(visible, opt?) end
