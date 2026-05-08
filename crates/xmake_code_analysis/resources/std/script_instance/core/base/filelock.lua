---@meta
---core.base.filelock

---
--- File lock object used to synchronize access across processes.
---@class filelock
local filelock = {}

---
--- Try to acquire a lock. When `opt.shared` is true, take a shared lock.
--- Re-entrant: multiple lock() calls must be matched by unlock().
---
---@param opt? table
---@return boolean ok
---@return string? err
function filelock:lock(opt) end

---
--- Try to acquire a lock without blocking.
---
---@param opt? table
---@return boolean ok
---@return string? err
function filelock:trylock(opt) end

---
--- Release one level of lock. Fully unlocks when the counter reaches zero.
---
---@return boolean ok
---@return string? err
function filelock:unlock() end

---
--- Close the lock handle.
---
---@return boolean ok
---@return string? err
function filelock:close() end

---
--- True if currently locked by this process.
---
---@return boolean
function filelock:islocked() end

---
--- Absolute path of the lock file.
---
---@return string
function filelock:path() end
