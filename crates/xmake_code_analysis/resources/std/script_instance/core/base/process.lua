---@meta
---[core.base.process](https://xmake.io/api/scripts/extension-modules/core/base/process)

---@class Process
local Process = {}

---
--- Get the process cdata.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/process#process-cdata)
---@return any ... -- ToDo
function Process:cdata() end

---
--- Close the subprocess.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/process#process-close)
---@return any ... -- ToDo
function Process:close() end

---
--- Kill the subprocess.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/process#process-kill)
---@return any ... -- ToDo
function Process:kill() end

---
--- Get the process name.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/process#process-name)
---@return any ... -- ToDo
function Process:name() end

---
--- Get the object type.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/process#process-otype)
---@return any ... -- ToDo
function Process:otype() end

---
--- Get the process program path.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/process#process-program)
---@return any ... -- ToDo
function Process:program() end

---
--- Wait for subprocess to complete.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/process#process-wait)
---@param timeout number Optional. Timeout in milliseconds. Use -1 for infinite wait, 0 for non-blocking
---@return any ... -- ToDo
function Process:wait(timeout) end
