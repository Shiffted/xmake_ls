---@meta
---[core.ui.view](https://xmake.io/api/scripts/extension-modules/core/ui/view)

---@class View
local View = {}

---
--- Trigger an action.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-action_on)
---@param name string Required. Action name
---@param ... any Variable arguments, passed to action handler
---@return any ... -- ToDo
function View:action_on(name, ...) end

---
--- Set the action handler.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-action_set)
---@param name string Required. Action name
---@param on_action function Required. Action handler function
---@return any ... -- ToDo
function View:action_set(name, on_action) end

---
--- Get the application instance.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-application)
---@return any ... -- ToDo
function View:application() end

---
--- Get the view attribute.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-attr)
---@param name string Required. Attribute name
---@return any ... -- ToDo
function View:attr(name) end

---
--- Set the view attribute.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-attr_set)
---@param name string Required. Attribute name
---@param value any Required. Attribute value
---@return any ... -- ToDo
function View:attr_set(name, value) end

---
--- Get the background color.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-background)
---@return any ... -- ToDo
function View:background() end

---
--- Set the background color.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-background_set)
---@param color string Required. Color name
---@return any ... -- ToDo
function View:background_set(color) end

---
--- Get the view bounds rectangle.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-bounds)
---@return any ... -- ToDo
function View:bounds() end

---
--- Set the view bounds rectangle.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-bounds_set)
---@param bounds rect Required. New bounds rectangle
---@return any ... -- ToDo
function View:bounds_set(bounds) end

---
--- Get the view canvas.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-canvas)
---@return any ... -- ToDo
function View:canvas() end

---
--- Move cursor position.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-cursor_move)
---@param x number Required. Cursor X coordinate
---@param y number Required. Cursor Y coordinate
---@return any ... -- ToDo
function View:cursor_move(x, y) end

---
--- Show or hide cursor.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-cursor_show)
---@param visible boolean Required. Whether to show cursor
---@return any ... -- ToDo
function View:cursor_show(visible) end

---
--- Get the view height.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-height)
---@return any ... -- ToDo
function View:height() end

---
--- Invalidate the view (needs redraw).
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-invalidate)
---@param bounds? boolean
---@return any ... -- ToDo
function View:invalidate(bounds?) end

---
--- Get the view name.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-name)
---@return any ... -- ToDo
function View:name() end

---
--- Draw the view.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-on_draw)
---@param transparent boolean Optional. Whether to draw transparently
---@return any ... -- ToDo
function View:on_draw(transparent) end

---
--- Handle events.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-on_event)
---@param e event Required. Event object
---@return any ... -- ToDo
function View:on_event(e) end

---
--- Get the view option.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-option)
---@param name string Required. Option name
---@return any ... -- ToDo
function View:option(name) end

---
--- Set the view option.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-option_set)
---@param name string Required. Option name
---@param enable boolean Required. Whether to enable
---@return any ... -- ToDo
function View:option_set(name, enable) end

---
--- Get the parent view.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-parent)
---@return any ... -- ToDo
function View:parent() end

---
--- Show or hide the view.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-show)
---@param visible boolean Required. Whether to show
---@param opt? table
---@return any ... -- ToDo
function View:show(visible, opt?) end

---
--- Get the view state.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-state)
---@param name string Required. State name
---@return any ... -- ToDo
function View:state(name) end

---
--- Set the view state.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-state_set)
---@param name string Required. State name
---@param enable boolean Required. Whether to enable
---@return any ... -- ToDo
function View:state_set(name, enable) end

---
--- Get the view width.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/view#view-width)
---@return any ... -- ToDo
function View:width() end
