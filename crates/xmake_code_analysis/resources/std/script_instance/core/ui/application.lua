---@meta
---[core.ui.application](https://xmake.io/api/scripts/extension-modules/core/ui/application)

---@class Application
local Application = {}

---
--- Set the application background color.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/application#application-background_set)
---@param color string Required. Color name (e.g., "blue", "red")
---@return any ... -- ToDo
function Application:background_set(color) end

---
--- Get the application's desktop area.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/application#application-desktop)
---@return any ... -- ToDo
function Application:desktop() end

---
--- Initialize the application.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/application#application-init)
---@param name string Required. Application name string
---@param argv? table
---@return any ... -- ToDo
function Application:init(name, argv?) end

---
--- Insert a view into the application.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/application#application-insert)
---@param view view Required. View to insert
---@param opt? table
---@return any ... -- ToDo
function Application:insert(view, opt?) end

---
--- Get the application's menu bar.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/application#application-menubar)
---@return any ... -- ToDo
function Application:menubar() end

---
--- Handle window resize events.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/application#application-on_resize)
---@return any ... -- ToDo
function Application:on_resize() end

---
--- Run the application and start the event loop.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/application#application-run)
---@param ... any Optional. Additional arguments
---@return any ... -- ToDo
function Application:run(...) end

---
--- Get the application's status bar.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/ui/application#application-statusbar)
---@return any ... -- ToDo
function Application:statusbar() end
