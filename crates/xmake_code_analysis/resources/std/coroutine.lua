---@meta
---[coroutine](https://xmake.io/api/scripts/builtin-modules/coroutine)

---@scope script
---@class coroutinelib
coroutine = {}

---
--- Create a new coroutine.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/coroutine#coroutine-create)
---@param f async fun(...): any... Function to create coroutine
---@return thread
---@nodiscard
function coroutine.create(f) end

---
--- Resume execution of a coroutine.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/coroutine#coroutine-resume)
---@param co thread Coroutine thread
---@param ... any Arguments to pass to the coroutine
---@return boolean success
---@return any ...
function coroutine.resume(co, ...) end

---
--- Get the running coroutine.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/coroutine#coroutine-running)
---@return thread, string
function coroutine.running() end

---
--- Get the status of a coroutine.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/coroutine#coroutine-status)
---@param co thread Coroutine thread
---@return
---| "running" # Is running.
---| "suspended" # Is suspended or not started.
---| "normal" # Is active but not running.
---| "dead" # Has finished or stopped with an error.
function coroutine.status(co) end

---
--- Create a coroutine wrapper function.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/coroutine#coroutine-wrap)
---@param f async fun(...): any... Function to create coroutine
---@return fun(...): any...
---@nodiscard
function coroutine.wrap(f) end

---
--- Yield execution to the caller.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/coroutine#coroutine-yield)
---@async
---@param ... any Values to return to the caller
---@return any ...
function coroutine.yield(...) end
