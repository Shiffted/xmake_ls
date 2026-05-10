---@meta
---[table](https://xmake.io/api/scripts/builtin-modules/table)

---@class tablelib
table = {}

---
--- Append elements to the end of an array.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-append)
---@param array table Target array
---@param ... any Elements to append
---@return any ... -- ToDo
function table.append(array, ...) end

---
---TODO: document `table.clear`.
---@return any ... -- ToDo
function table.clear(...) end

---
--- Clone a table.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-clone)
---@param tbl table Table to clone
---@param depth? number
---@return any ... -- ToDo
function table.clone(tbl, depth?) end

---
--- Given a list where all elements are strings or numbers, returns the string
--- `list[i]..sep..list[i+1] ... sep..list[j]`. The default value for
--- `sep` is the empty string, the default for `i` is 1, and the default for
--- `j` is #list. If `i` is greater than `j`, returns the empty string.
---
---@param list table
---@param sep? string
---@param i? integer
---@param j? integer
---@return string
---@nodiscard
function table.concat(list, sep, i, j) end

---
--- Determine that the table contains the specified value.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-contains)
---@param tbl table Table to check
---@param ... any Values to check for
---@return any ... -- ToDo
function table.contains(tbl, ...) end

---
---TODO: document `table.copy`.
---@return any ... -- ToDo
function table.copy(...) end

---
---TODO: document `table.copy2`.
---@return any ... -- ToDo
function table.copy2(...) end

---
--- Check if a table is empty.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-empty)
---@param tbl table Table to check
---@return any ... -- ToDo
function table.empty(tbl) end

---
--- Find indices or keys for a given value.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-find)
---@param tbl table Table to search
---@param value any Value to find
---@return any ... -- ToDo
function table.find(tbl, value) end

---
--- Find the first index of a given value.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-find_first)
---@param tbl table Array to search
---@param value any Value to find
---@return any ... -- ToDo
function table.find_first(tbl, value) end

---
--- Find the first index matching a predicate.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-find_first_if)
---@param tbl table Array to search
---@param pred function Predicate function, receives `(index, value)`, returns true for matches
---@return any ... -- ToDo
function table.find_first_if(tbl, pred) end

---
--- Find indices or keys matching a predicate.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-find_if)
---@param tbl table Table to search
---@param pred function Predicate function, receives `(key, value)`, returns true for matches
---@return any ... -- ToDo
function table.find_if(tbl, pred) end

---
---Returns the number of elements in the table. This function is equivalent to `#list`.
---
---[View documents](command:extension.lua.doc?["en-us/54/manual.html/pdf-table.getn"])
---@version 5.1, JIT
---@generic T
---@param list T[]
---@return integer
---@nodiscard
---@deprecated
function table.getn(list) end

---
---TODO: document `table.imap`.
---@return any ... -- ToDo
function table.imap(...) end

---
--- Inherit interfaces and create a new instance.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-inherit)
---@param ... any Classes or tables to inherit from
---@return any ... -- ToDo
function table.inherit(...) end

---
---TODO: document `table.inherit2`.
---@return any ... -- ToDo
function table.inherit2(...) end

---
--- Inserts element `value` at position `pos` in `list`, shifting up the
--- elements to `list[pos]`, `list[pos+1]`, `···`, `list[#list]`. The default
--- value for `pos` is ``#list+1`, so that a call `table.insert(t,x)`` inserts
--- `x` at the end of list `t`.
---
---@overload fun(list:table, value:any):integer
---@param list table
---@param pos integer
---@param value any
---@return integer
function table.insert(list, pos, value) end

---
--- Check if a table is an array.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-is_array)
---@param tbl table Table to check
---@return any ... -- ToDo
function table.is_array(tbl) end

---
--- Check if a table is a dictionary.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-is_dictionary)
---@param tbl table Table to check
---@return any ... -- ToDo
function table.is_dictionary(tbl) end

---
--- Merge multiple tables and return.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-join)
---@param ... table Tables to merge
---@return any ... -- ToDo
function table.join(...) end

---
--- Combine multiple tables into the first table.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-join2)
---@param target table Target table to merge into
---@param ... table Tables to merge
---@return any ... -- ToDo
function table.join2(target, ...) end

---
--- Get all keys of a table.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-keys)
---@param tbl table Table to get keys from
---@return any ... -- ToDo
function table.keys(tbl) end

---
---TODO: document `table.map`.
---@return any ... -- ToDo
function table.map(...) end

---@version 5.1, JIT
---
---Returns the largest positive numerical index of the given table, or zero if the table has no positive numerical indices.
---
---@param table table
---@return integer
---@nodiscard
function table.maxn(table) end

---@version > 5.3
---
--- Moves elements from table a1 to table `a2`, performing the equivalent to
--- the following multiple assignment: `a2[t]`,`··· = a1[f]`,`···,a1[e]`. The
--- default for `a2` is `a1`. The destination range can overlap with the source
--- range. The number of elements to be moved must fit in a Lua integer.
---
--- Returns the destination table `a2`.
---
---@overload fun(a1:table, f:integer, e:integer, t:integer):table
---@param a1 table
---@param f integer
---@param e integer
---@param t integer
---@param a2 table
---@return table
function table.move(a1, f, e, t, a2) end

---
---TODO: document `table.new`.
---@return any ... -- ToDo
function table.new(...) end

---
--- Get an ordered list of keys.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-orderkeys)
---@param tbl table Table to get keys from
---@return any ... -- ToDo
function table.orderkeys(tbl) end

---
--- Iterate key/value pairs in sorted key order.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-orderpairs)
---@param tbl table Table to iterate
---@param callback? function
---@return any ... -- ToDo
function table.orderpairs(tbl, callback?) end

---
--- Pack arguments into a table.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-pack)
---@param ... any Arguments to pack
---@return any ... -- ToDo
function table.pack(...) end

---
--- Removes from `list` the element at position `pos`, returning the value of
--- the removed element. When `pos` is an integer between 1 and `#list`, it
--- shifts down the elements `list[pos+1]`, `list[pos+2]`, `···`,
--- `list[#list]` and erases element `list[#list]`; The index pos can also be 0
--- when `#list` is 0, or `#list` + 1; in those cases, the function erases
--- the element `list[pos]`.
---
--- The default value for `pos` is `#list`, so that a call `table.remove(l)`
--- removes the last element of list `l`.
---
---@generic V
---@param list table<integer, V> | V[]
---@param pos? integer
---@return V
function table.remove(list, pos) end

---
--- Remove elements matching a predicate.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-remove_if)
---@param tbl table Table to modify
---@param pred function Predicate function, receives `(key, value)`, returns true to remove
---@return any ... -- ToDo
function table.remove_if(tbl, pred) end

---
--- Reverse an array.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-reverse)
---@param arr table Array to reverse
---@return any ... -- ToDo
function table.reverse(arr) end

---
--- Reverse deduplicate an array.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-reverse_unique)
---@param array table Array to deduplicate
---@param barrier? function
---@return any ... -- ToDo
function table.reverse_unique(array, barrier?) end

---
--- Shallow join objects into a new table (without expanding sub-tables).
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-shallow_join)
---@param ... any Objects to join
---@return any ... -- ToDo
function table.shallow_join(...) end

---
--- Shallow join objects into the first table (without expanding sub-tables).
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-shallow_join2)
---@param target table Target table
---@param ... any Objects to join
---@return any ... -- ToDo
function table.shallow_join2(target, ...) end

---
--- Get the slice of the table.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-slice)
---@param tbl table Table to slice
---@param start number Start index
---@param stop? number Stop index
---@param step? number Step size
---@return any ... -- ToDo
function table.slice(tbl, start, stop, step) end

---
--- Sorts list elements in a given order, *in-place*, from `list[1]` to
--- `list[#list]`. If `comp` is given, then it must be a function that receives
--- two list elements and returns true when the first element must come before
--- the second in the final order (so that, after the sort, `i < j` implies not
--- `comp(list[j],list[i]))`. If `comp` is not given, then the standard Lua
--- operator `<` is used instead.
---
--- Note that the `comp` function must define a strict partial order over the
--- elements in the list; that is, it must be asymmetric and transitive.
--- Otherwise, no valid sort may be possible.
---
--- The sort algorithm is not stable: elements considered equal by the given
--- order may have their relative positions changed by the sort.
---
---@generic V
---@param list V[]
---@param comp? fun(a:V, b:V):boolean
---@return integer
function table.sort(list, comp) end

---
--- Swap two elements in an array.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-swap)
---@param array table Target array
---@param i number Index of the first element
---@param j number Index of the second element
---@return any ... -- ToDo
function table.swap(array, i, j) end

---
--- Collect data from an iterator into an array.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-to_array)
---@param iterator function Iterator function
---@param state any Iterator state
---@param var any Iterator variable
---@return any ... -- ToDo
function table.to_array(iterator, state, var) end

---
--- Deduplicate the contents of the table.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-unique)
---@param tbl table Table to deduplicate
---@return any ... -- ToDo
function table.unique(tbl) end

---
--- Unpack a table into multiple return values.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-unpack)
---@generic T, Start: integer, End: integer
---@param tbl T Table to unpack
---@param i? std.ConstTpl<Start> Start index, default is 1
---@param j? std.ConstTpl<End> End index, default is #tbl
---@return std.Unpack<T, Start, End>
function table.unpack(tbl, i, j) end

---
--- Unwrap a single-element array.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-unwrap)
---@param array table Array to unwrap
---@return any ... -- ToDo
function table.unwrap(array) end

---
--- Get all values of a table.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-values)
---@param tbl table Table to get values from
---@return any ... -- ToDo
function table.values(tbl) end

---
--- Wrap a value into an array.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-wrap)
---@param value any Value to wrap
---@return any ... -- ToDo
function table.wrap(value) end

---
--- Lock a table to prevent unwrapping.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-wrap_lock)
---@param value table Table to lock
---@return any ... -- ToDo
function table.wrap_lock(value) end

---
--- Unlock a table to allow unwrapping.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/table#table-wrap_unlock)
---@param value table Table to unlock
---@return any ... -- ToDo
function table.wrap_unlock(value) end
