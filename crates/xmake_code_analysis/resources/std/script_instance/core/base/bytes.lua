---@meta
---[core.base.bytes](https://xmake.io/api/scripts/extension-modules/core/base/bytes)

---@class Bytes
local Bytes = {}

---
--- Clone the buffer.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-clone)
---@return any ... -- ToDo
function Bytes:clone() end

---
--- Copy data to buffer.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-copy)
---@param src string|bytes Source data, can be string or bytes object
---@param start number Source data start position (optional, default 1)
---@param last number Source data end position (optional, default source data size)
---@return any ... -- ToDo
function Bytes:copy(src, start, last) end

---
--- Copy data to specified position.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-copy2)
---@param pos number Target position
---@param src string|bytes Source data, can be string or bytes object
---@param start number Source data start position (optional)
---@param last number Source data end position (optional)
---@return any ... -- ToDo
function Bytes:copy2(pos, src, start, last) end

---
--- Display buffer contents in hexadecimal format.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-dump)
---@param start number Start position (optional, default 1)
---@param last number End position (optional, default buffer size)
---@return any ... -- ToDo
function Bytes:dump(start, last) end

---
--- Move data to buffer beginning.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-move)
---@param start number Source data start position
---@param last number Source data end position (optional)
---@return any ... -- ToDo
function Bytes:move(start, last) end

---
--- Move data to specified position.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-move2)
---@param pos number Target position
---@param start number Source data start position
---@param last number Source data end position (optional)
---@return any ... -- ToDo
function Bytes:move2(pos, start, last) end

---
--- Check if buffer is read-only.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-readonly)
---@return any ... -- ToDo
function Bytes:readonly() end

---
--- Read signed 8-bit integer.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-s8)
---@param offset number Byte offset position
---@return any ... -- ToDo
function Bytes:s8(offset) end

---
--- Get buffer size.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-size)
---@return any ... -- ToDo
function Bytes:size() end

---
--- Create a slice.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-slice)
---@param start number Start position
---@param last number End position
---@return any ... -- ToDo
function Bytes:slice(start, last) end

---
--- Convert to string.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-str)
---@param start number Start position (optional, default 1)
---@param last number End position (optional, default buffer size)
---@return any ... -- ToDo
function Bytes:str(start, last) end

---
--- Read unsigned 16-bit integer (big-endian).
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-u16be)
---@param offset number Byte offset position
---@return any ... -- ToDo
function Bytes:u16be(offset) end

---
--- Write unsigned 16-bit integer (big-endian).
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-u16be_set)
---@param offset number Byte offset position
---@param value number Value to write (0-65535)
---@return any ... -- ToDo
function Bytes:u16be_set(offset, value) end

---
--- Read unsigned 16-bit integer (little-endian).
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-u16le)
---@param offset number Byte offset position
---@return any ... -- ToDo
function Bytes:u16le(offset) end

---
--- Write unsigned 16-bit integer (little-endian).
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-u16le_set)
---@param offset number Byte offset position
---@param value number Value to write (0-65535)
---@return any ... -- ToDo
function Bytes:u16le_set(offset, value) end

---
--- Read unsigned 32-bit integer (big-endian).
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-u32be)
---@param offset number Byte offset position
---@return any ... -- ToDo
function Bytes:u32be(offset) end

---
--- Write unsigned 32-bit integer (big-endian).
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-u32be_set)
---@param offset number Byte offset position
---@param value number Value to write (0-4294967295)
---@return any ... -- ToDo
function Bytes:u32be_set(offset, value) end

---
--- Read unsigned 32-bit integer (little-endian).
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-u32le)
---@param offset number Byte offset position
---@return any ... -- ToDo
function Bytes:u32le(offset) end

---
--- Write unsigned 32-bit integer (little-endian).
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-u32le_set)
---@param offset number Byte offset position
---@param value number Value to write (0-4294967295)
---@return any ... -- ToDo
function Bytes:u32le_set(offset, value) end

---
--- Read unsigned 8-bit integer.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-u8)
---@param offset number Byte offset position
---@return any ... -- ToDo
function Bytes:u8(offset) end

---
--- Write unsigned 8-bit integer.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/bytes#bytes-u8_set)
---@param offset number Byte offset position
---@param value number Value to write (0-255)
---@return any ... -- ToDo
function Bytes:u8_set(offset, value) end
