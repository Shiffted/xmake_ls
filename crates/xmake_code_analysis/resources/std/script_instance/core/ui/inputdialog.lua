---@meta
---[core.ui.inputdialog](https://xmake.io/api/scripts/extension-modules/core/ui/inputdialog)

---@class Inputdialog
local Inputdialog = {}

---
--- Set dialog background color.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/inputdialog#inputdialog-background_set)
---@param color string Required. Color name (e.g., "blue", "cyan")
---@return any ... -- ToDo
function Inputdialog:background_set(color) end

---
--- Add a button to the dialog.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/inputdialog#inputdialog-button_add)
---@param name string Required. Button name string
---@param text string Required. Button display text
---@param command string|function Required. Command string or function to execute
---@return any ... -- ToDo
function Inputdialog:button_add(name, text, command) end

---
--- Close the input dialog.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/inputdialog#inputdialog-quit)
---@return any ... -- ToDo
function Inputdialog:quit() end

---
--- Show or hide the dialog.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/inputdialog#inputdialog-show)
---@param visible boolean Required. Show or hide the dialog
---@param opt? table
---@return any ... -- ToDo
function Inputdialog:show(visible, opt?) end

---
--- Get the prompt label.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/inputdialog#inputdialog-text)
---@return any ... -- ToDo
function Inputdialog:text() end

---
--- Get the text edit component.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/inputdialog#inputdialog-textedit)
---@return any ... -- ToDo
function Inputdialog:textedit() end
