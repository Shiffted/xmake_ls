---@meta
---[core.base.heap](https://xmake.io/api/scripts/extension-modules/core/base/heap)

---@class Heap
local Heap = {}

function Heap:length(...) end

---
--- Peek at a value without removing it.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/heap#heap-peek)
---@param index number Optional. The position to peek at (1-based). Defaults to 1 (top of heap)
---@return any ... -- ToDo
function Heap:peek(index) end

---
--- Pop a value from the heap.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/heap#heap-pop)
---@param index number Optional. The position to pop from (1-based). Defaults to 1 (top of heap)
---@return any ... -- ToDo
function Heap:pop(index) end

---
--- Push a value onto the heap.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/heap#heap-push)
---@param value any Required. Value to push onto the heap
---@return any ... -- ToDo
function Heap:push(value) end

---
--- Replace a value at a given index.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/heap#heap-replace)
---@param index number Required. The position to replace (1-based)
---@param value any Required. The new value
---@return any ... -- ToDo
function Heap:replace(index, value) end
