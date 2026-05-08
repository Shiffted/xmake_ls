---@meta
---[core.ui.scrollbar](https://xmake.io/api/scripts/extension-modules/core/ui/scrollbar)

---@class Scrollbar
local Scrollbar = {}

---
--- Get scrollbar character.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/scrollbar#scrollbar-char)
---@return any ... -- ToDo
function Scrollbar:char() end

---
--- Set scrollbar character.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/scrollbar#scrollbar-char_set)
---@param char string Required. Character displayed in the scrollbar
---@return any ... -- ToDo
function Scrollbar:char_set(char) end

---
--- Get scrollbar character attribute.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/scrollbar#scrollbar-charattr)
---@return any ... -- ToDo
function Scrollbar:charattr() end

---
--- Set scrollbar character attribute.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/scrollbar#scrollbar-charattr_set)
---@param attr string Required. Character attribute string
---@return any ... -- ToDo
function Scrollbar:charattr_set(attr) end

---
--- Handle keyboard events.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/scrollbar#scrollbar-on_event)
---@param e event Required. Event object
---@return any ... -- ToDo
function Scrollbar:on_event(e) end

---
--- Get current scroll progress.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/scrollbar#scrollbar-progress)
---@return any ... -- ToDo
function Scrollbar:progress() end

---
--- Set scroll progress.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/scrollbar#scrollbar-progress_set)
---@param progress number Required. Progress value, range 0.0 to 1.0
---@return any ... -- ToDo
function Scrollbar:progress_set(progress) end

---
--- Scroll the scrollbar.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/scrollbar#scrollbar-scroll)
---@param steps? number
---@return any ... -- ToDo
function Scrollbar:scroll(steps?) end

---
--- Get step width.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/scrollbar#scrollbar-stepwidth)
---@return any ... -- ToDo
function Scrollbar:stepwidth() end

---
--- Set step width.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/scrollbar#scrollbar-stepwidth_set)
---@param stepwidth number Required. Step width, range 0.0 to 1.0
---@return any ... -- ToDo
function Scrollbar:stepwidth_set(stepwidth) end

---
--- Check if it's a vertical scrollbar.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/scrollbar#scrollbar-vertical)
---@return any ... -- ToDo
function Scrollbar:vertical() end

---
--- Set scrollbar direction.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/scrollbar#scrollbar-vertical_set)
---@param vertical boolean Required. Set direction, `true` for vertical, `false` for horizontal
---@return any ... -- ToDo
function Scrollbar:vertical_set(vertical) end
