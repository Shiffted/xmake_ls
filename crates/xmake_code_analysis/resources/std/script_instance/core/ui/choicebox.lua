---@meta
---[core.ui.choicebox](https://xmake.io/api/scripts/extension-modules/core/ui/choicebox)

---@class Choicebox
local Choicebox = {}

---
--- Load option values into the list box.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/choicebox#choicebox-load)
---@param values table Required. Array of option values
---@param selected? number
---@return any ... -- ToDo
function Choicebox:load(values, selected?) end

---
--- Handle keyboard events.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/choicebox#choicebox-on_event)
---@param e event Required. Event object
---@return any ... -- ToDo
function Choicebox:on_event(e) end

---
--- Handle list box resize.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/choicebox#choicebox-on_resize)
---@return any ... -- ToDo
function Choicebox:on_resize() end

---
--- Scroll the list box content.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/choicebox#choicebox-scroll)
---@param count number Required. Number of lines to scroll, positive for down, negative for up
---@return any ... -- ToDo
function Choicebox:scroll(count) end

---
--- Check if the list box is scrollable.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/choicebox#choicebox-scrollable)
---@return any ... -- ToDo
function Choicebox:scrollable() end
