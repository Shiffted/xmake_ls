---@meta
---[task](https://xmake.io/api/description/plugin-and-task)

-- TODO: task api does not seem to be reported by `xmake show`.

---
--- Define a plugin or task.
---
---[Open in browser](https://xmake.io/api/description/plugin-and-task#task)
--- Example:
--- ```lua
--- task("hello")
---     on_run(function () print("hello") end)
--- task_end()
--- ```
---@scope root
---@param name string Task name
---@param func? fun(): nil Task scoped function
---@return nil
function task(name, func) end

---
--- Define a plugin or task.
---
---[Open in browser](https://xmake.io/api/description/plugin-and-task#task)
---@scope root
---@param name string Task name
---@param attr table Task attributes
---@return nil
function task(name, attr) end

---
--- End plugin or task definition.
---
---[Open in browser](https://xmake.io/api/description/plugin-and-task#task_end)
---@scope task
---@return nil
function task_end() end

---
--- Setting up a task to run a script.
---
---[Open in browser](https://xmake.io/api/description/plugin-and-task#on_run)
---@scope task
---@param func fun(): nil Function to run when task is running
---@return nil
function on_run(func) end

---
--- Setting up a task to run a script.
---
---[Open in browser](https://xmake.io/api/description/plugin-and-task#on_run)
---@scope task
---@param name string Script name to run when task is running
---@return nil
function on_run(name) end

---
--- Setting task categories.
---
---[Open in browser](https://xmake.io/api/description/plugin-and-task#set_category)
---@scope task
---@param name string|"plugin"|"action" Category name
---@return nil
function set_category(name) end

---@alias TaskMenuOption string[]

---@class TaskMenu
---@field usage string? Menu usage
---@field description string? Menu description
---@field options TaskMenuOption[]? Menu options

---
--- Setting the task menu.
---
---[Open in browser](https://xmake.io/api/description/plugin-and-task#set_menu)
---@scope task
---@param menu TaskMenu Task menu
---@return nil
function set_menu(menu) end
