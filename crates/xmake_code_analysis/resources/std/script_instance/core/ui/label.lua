---@meta
---[core.ui.label](https://xmake.io/api/scripts/extension-modules/core/ui/label)

---@class Label
local Label = {}

---
--- Draw the label view.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/label#label-on_draw)
---@param transparent boolean Optional. Draw with transparency
---@return any ... -- ToDo
function Label:on_draw(transparent) end

---
--- Split text into lines based on width.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/label#label-splitext)
---@param text string Required. Text to split
---@param width? number
---@return any ... -- ToDo
function Label:splitext(text, width?) end

---
--- Get the current text content.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/label#label-text)
---@return any ... -- ToDo
function Label:text() end

---
--- Set the text content.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/label#label-text_set)
---@param text string Required. Text content to display
---@return any ... -- ToDo
function Label:text_set(text) end

---
--- Get the text attribute string.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/label#label-textattr)
---@return any ... -- ToDo
function Label:textattr() end

---
--- Set the text attribute (color, style).
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/label#label-textattr_set)
---@param attr string Required. Text attribute string (e.g., "red bold", "yellow onblue")
---@return any ... -- ToDo
function Label:textattr_set(attr) end

---
--- Get the compiled text attribute value.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/label#label-textattr_val)
---@return any ... -- ToDo
function Label:textattr_val() end
