---@meta
---[core.ui.button](https://xmake.io/api/scripts/extension-modules/core/ui/button)

---@class Button
local Button = {}

---
--- Set the button action handler.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/button#button-action_set)
---@param action_type string Required. Action type (e.g., `action.ac_on_enter`)
---@param handler function Required. Function to call when action is triggered
---@return any ... -- ToDo
function Button:action_set(action_type, handler) end

---
--- Draw the button view.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/button#button-on_draw)
---@param transparent boolean Optional. Draw with transparency
---@return any ... -- ToDo
function Button:on_draw(transparent) end

---
--- Handle keyboard events.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/button#button-on_event)
---@param e event Required. Event object
---@return any ... -- ToDo
function Button:on_event(e) end

---
--- Get the button text.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/button#button-text)
---@return any ... -- ToDo
function Button:text() end

---
--- Set the button text.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/button#button-text_set)
---@param text string Required. Button text to display
---@return any ... -- ToDo
function Button:text_set(text) end

---
--- Get the text attribute.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/button#button-textattr)
---@return any ... -- ToDo
function Button:textattr() end

---
--- Set the text attribute (color, style).
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/button#button-textattr_set)
---@param attr string Required. Text attribute string (e.g., "red bold")
---@return any ... -- ToDo
function Button:textattr_set(attr) end
