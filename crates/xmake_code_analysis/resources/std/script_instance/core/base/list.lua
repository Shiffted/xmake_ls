---@meta
---[core.base.list](https://xmake.io/api/scripts/extension-modules/core/base/list)

---@class List
local List = {}

---
--- Clear the list.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-clear)
---@return any ... -- ToDo
function List:clear() end

---
--- Check if list is empty.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-empty)
---@return any ... -- ToDo
function List:empty() end

---
--- Get the first element.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-first)
---@return any ... -- ToDo
function List:first() end

---
--- Insert an element.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-insert)
---@param item any Required. The element to insert
---@param after any Optional. Insert after this element; if nil, inserts at the end
---@return any ... -- ToDo
function List:insert(item, after) end

---
--- Insert element at the beginning.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-insert_first)
---@param item any Required. The element to insert
---@return any ... -- ToDo
function List:insert_first(item) end

---
--- Insert element at the end.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-insert_last)
---@param item any Required. The element to insert
---@return any ... -- ToDo
function List:insert_last(item) end

---
--- Iterate forward through the list.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-items)
---@return any ... -- ToDo
function List:items() end

---
--- Get the last element.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-last)
---@return any ... -- ToDo
function List:last() end

---
--- Get the next element.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-next)
---@param current any Optional. The current element; if nil, returns the first element
---@return any ... -- ToDo
function List:next(current) end

---
--- Remove element from the end of the list.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-pop)
---@return any ... -- ToDo
function List:pop() end

---
--- Get the previous element.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-prev)
---@param current any Optional. The current element; if nil, returns the last element
---@return any ... -- ToDo
function List:prev(current) end

---
--- Add element to the end of the list.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-push)
---@param item any Required. The element to add
---@return any ... -- ToDo
function List:push(item) end

---
--- Remove specified element.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-remove)
---@param item any Required. The element to remove
---@return any ... -- ToDo
function List:remove(item) end

---
--- Remove element from the beginning.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-remove_first)
---@return any ... -- ToDo
function List:remove_first() end

---
--- Remove element from the end.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-remove_last)
---@return any ... -- ToDo
function List:remove_last() end

---
--- Iterate backward through the list.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-ritems)
---@return any ... -- ToDo
function List:ritems() end

---
--- Remove element from the beginning of the list.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-shift)
---@return any ... -- ToDo
function List:shift() end

---
--- Get list size.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-size)
---@return any ... -- ToDo
function List:size() end

---
--- Add element to the beginning of the list.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/list#list-unshift)
---@param item any Required. The element to add
---@return any ... -- ToDo
function List:unshift(item) end
