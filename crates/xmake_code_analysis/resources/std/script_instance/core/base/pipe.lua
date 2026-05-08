---@meta
---[core.base.pipe](https://xmake.io/api/scripts/extension-modules/core/base/pipe)

---@class Pipe
local Pipe = {}

---
--- Close the pipe.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/pipe#pipe-close)
---@return any ... -- ToDo
function Pipe:close() end

---
--- Connect to named pipe (server-side).
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/pipe#pipe-connect)
---@param opt table Optional. Option parameters
---@return any ... -- ToDo
function Pipe:connect(opt) end

---
--- Get pipe name.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/pipe#pipe-name)
---@return any ... -- ToDo
function Pipe:name() end

---
--- Read data from pipe.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/pipe#pipe-read)
---@param buff bytes Required. bytes buffer object to store the read data
---@param size number Required. Number of bytes to read
---@param opt table Optional. Option parameters
---@return any ... -- ToDo
function Pipe:read(buff, size, opt) end

---
--- Wait for pipe events.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/pipe#pipe-wait)
---@param events number Required. Events to wait for
---@param timeout number Required. Timeout in milliseconds, -1 means wait indefinitely
---@return any ... -- ToDo
function Pipe:wait(events, timeout) end

---
--- Write data to pipe.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/pipe#pipe-write)
---@param data string|bytes Required. Data to write, can be string or bytes object
---@param opt table Optional. Option parameters
---@return any ... -- ToDo
function Pipe:write(data, opt) end
