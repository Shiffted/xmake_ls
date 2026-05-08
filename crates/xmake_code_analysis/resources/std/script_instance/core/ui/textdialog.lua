---@meta
---[core.ui.textdialog](https://xmake.io/api/scripts/extension-modules/core/ui/textdialog)

---@class Textdialog
local Textdialog = {}

---
--- Handle dialog events.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/textdialog#textdialog-on_event)
---@param e event Required. Event object
---@return any ... -- ToDo
function Textdialog:on_event(e) end

---
--- Set dialog options.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/textdialog#textdialog-option_set)
---@param name string Required. Option name, supports: `"scrollable"`
---@param value any Required. Option value
---@return any ... -- ToDo
function Textdialog:option_set(name, value) end

---
--- Get the scrollbar component.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/textdialog#textdialog-scrollbar)
---@return any ... -- ToDo
function Textdialog:scrollbar() end

---
--- Get the text area component.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/textdialog#textdialog-text)
---@return any ... -- ToDo
function Textdialog:text() end
