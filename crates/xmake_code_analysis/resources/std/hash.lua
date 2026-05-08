---@meta
---[hash](https://xmake.io/api/scripts/builtin-modules/hash)

---@class hashlib
hash = {}

---
--- Calculate the MD5 hash value of a file or binary data.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/hash#hash-md5)
---@param input string|bytes File path (string) or binary data (bytes)
---@return any ... -- ToDo
function hash.md5(input) end

---
--- Generate a 128-bit random hash value.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/hash#hash-rand128)
---@return any ... -- ToDo
function hash.rand128() end

---
--- Generate a 32-bit random hash value.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/hash#hash-rand32)
---@return any ... -- ToDo
function hash.rand32() end

---
--- Generate a 64-bit random hash value.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/hash#hash-rand64)
---@return any ... -- ToDo
function hash.rand64() end

---
--- Calculate the SHA1 hash value of a file or binary data.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/hash#hash-sha1)
---@param input string|bytes File path (string) or binary data (bytes)
---@return any ... -- ToDo
function hash.sha1(input) end

---
--- Calculate the SHA256 hash value of a file or binary data.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/hash#hash-sha256)
---@param input string|bytes File path (string) or binary data (bytes)
---@return any ... -- ToDo
function hash.sha256(input) end

---
--- Generate a 128-bit hash value from a string.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/hash#hash-strhash128)
---@param input string String
---@return any ... -- ToDo
function hash.strhash128(input) end

---
--- Generate a 32-bit hash value from a string.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/hash#hash-strhash32)
---@param input string String
---@return any ... -- ToDo
function hash.strhash32(input) end

---
--- Generate a 64-bit hash value from a string.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/hash#hash-strhash64)
---@param input string String
---@return any ... -- ToDo
function hash.strhash64(input) end

---
--- Generate a UUID based on a name.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/hash#hash-uuid)
---@param name string Name string for UUID generation
---@return any ... -- ToDo
function hash.uuid(name) end

---
--- Generate a random UUID (version 4).
---
---@param name string Name string for UUID4 generation
---@return string
function hash.uuid4(...) end

---
--- Calculate the 128-bit xxHash hash value of a file or binary data.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/hash#hash-xxhash128)
---@param input string|bytes File path (string) or binary data (bytes)
---@return any ... -- ToDo
function hash.xxhash128(input) end

---
--- Calculate the 32-bit xxHash hash value of a file or binary data.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/hash#hash-xxhash32)
---@param input string|bytes File path (string) or binary data (bytes)
---@return any ... -- ToDo
function hash.xxhash32(input) end

---
--- Calculate the 64-bit xxHash hash value of a file or binary data.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/hash#hash-xxhash64)
---@param input string|bytes File path (string) or binary data (bytes)
---@return any ... -- ToDo
function hash.xxhash64(input) end
