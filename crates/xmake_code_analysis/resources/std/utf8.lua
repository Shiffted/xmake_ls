---@meta
---[utf8](https://xmake.io/api/scripts/builtin-modules/utf8)

---@class utf8lib
utf8 = {}

---
--- Returns the internal numerical codes of the characters s[i], s[i+1], ..., s[j].
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/utf8#utf8-byte)
---@param s string
---@param i number
---@param j number
---@return any ... -- ToDo
function utf8.byte(s, i, j) end

---
--- Receives zero or more integers, converts each one to its corresponding UTF-8 byte sequence.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/utf8#utf8-char)
---@param ... any
---@return any ... -- ToDo
function utf8.char(...) end

---
--- Returns the codepoints (as integers) from all characters in the string.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/utf8#utf8-codepoint)
---@param s string
---@param i number
---@param j number
---@return any ... -- ToDo
function utf8.codepoint(s, i, j) end

---
--- Returns an iterator (a function) that iterates over all characters in the string.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/utf8#utf8-codes)
---@param s string
---@param lax boolean
---@return any ... -- ToDo
function utf8.codes(s, lax) end

---
--- Returns the start and end position (in characters) of the first occurrence of pattern in the string s.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/utf8#utf8-find)
---@param s string
---@param pattern string
---@param init number
---@param plain boolean
---@return any ... -- ToDo
function utf8.find(s, pattern, init, plain) end

---
--- Returns the position (in characters) of the last occurrence of pattern in the string s.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/utf8#utf8-lastof)
---@param s string
---@param pattern string
---@param plain boolean
---@return any ... -- ToDo
function utf8.lastof(s, pattern, plain) end

---
--- Returns the number of UTF-8 characters in the string.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/utf8#utf8-len)
---@param s string
---@param i number
---@param j number
---@param lax boolean
---@return any ... -- ToDo
function utf8.len(s, i, j, lax) end

---
--- Returns the position (in bytes) where the encoding of the n-th character of the string starts.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/utf8#utf8-offset)
---@param s string
---@param n number
---@param i number
---@return any ... -- ToDo
function utf8.offset(s, n, i) end

---
--- Returns a string with the characters of s in reverse order.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/utf8#utf8-reverse)
---@param s string
---@return any ... -- ToDo
function utf8.reverse(s) end

---
--- Returns the substring of s that starts at character i and continues until character j.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/utf8#utf8-sub)
---@param s string
---@param i number
---@param j number
---@return any ... -- ToDo
function utf8.sub(s, i, j) end

---
---TODO: document `utf8.wcswidth`.
---@return any ... -- ToDo
function utf8.wcswidth(...) end

---
---TODO: document `utf8.wcwidth`.
---@return any ... -- ToDo
function utf8.wcwidth(...) end

---
--- Returns the display width of the string s (usually for terminal alignment).
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/utf8#utf8-width)
---@param s string
---@return any ... -- ToDo
function utf8.width(s) end
