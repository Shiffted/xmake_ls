---@meta
---[path](https://xmake.io/api/scripts/builtin-modules/path)

---@class pathlib
path = {}

---
--- Convert to absolute path.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-absolute)
---@param path string Path string to convert
---@param rootdir string Root directory for absolute conversion
---@return any ... -- ToDo
function path.absolute(path, rootdir) end

---
--- Get the file name with no suffix at the end of the path.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-basename)
---@param path string Path string
---@return any ... -- ToDo
function path.basename(path) end

---
--- Convert path to Cygwin style.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-cygwin)
---@param path string Path string
---@return any ... -- ToDo
function path.cygwin(path) end

---
---TODO: document `path.cygwin_path`.
---@return any ... -- ToDo
function path.cygwin_path(...) end

---
--- Get the directory name of the path.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-directory)
---@param path string Path string
---@return any ... -- ToDo
function path.directory(path) end

---
--- Get the environment variable path separator of the current platform.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-envsep)
---@return any ... -- ToDo
function path.envsep() end

---
--- Get the suffix of the path.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-extension)
---@param path string Path string
---@param level? number
---@return any ... -- ToDo
function path.extension(path, level?) end

---
--- Get the file name with the last suffix of the path.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-filename)
---@param path string Path string
---@return any ... -- ToDo
function path.filename(path) end

---
--- Check if a value is a path instance.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-instance_of)
---@param p any The value to check
---@return any ... -- ToDo
function path.instance_of(p) end

---
--- Determine if it is an absolute path.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-is_absolute)
---@param path string Path string to check
---@return any ... -- ToDo
function path.is_absolute(path) end

---
--- Get if the last character is a separator.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-islastsep)
---@param path string Path string to check
---@return any ... -- ToDo
function path.islastsep(path) end

---
--- Stitching path.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-join)
---@param paths string|string[] Path string or array
---@param ... any Variable arguments, can pass multiple path strings
---@return any ... -- ToDo
function path.join(paths, ...) end

---
--- Join path array into an environment variable string.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-joinenv)
---@param paths string[] Array of path strings
---@return any ... -- ToDo
function path.joinenv(paths) end

---
--- Create a new path instance.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-new)
---@param p string Required. Path string
---@param transform? function
---@return any ... -- ToDo
function path.new(p, transform?) end

---
--- Normalize the path.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-normalize)
---@param p string Required. Path string
---@return any ... -- ToDo
function path.normalize(p) end

---
--- Convert path pattern to lua pattern.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-pattern)
---@param path string Path string to convert
---@return any ... -- ToDo
function path.pattern(path) end

---
--- Convert to relative path.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-relative)
---@param path string Path string to convert
---@param rootdir string Root directory for relative conversion
---@return any ... -- ToDo
function path.relative(path, rootdir) end

---
--- Get the path separator of the current platform.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-sep)
---@return any ... -- ToDo
function path.sep() end

---
--- Split the path by the separator.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-split)
---@param path string Path string to split
---@return any ... -- ToDo
function path.split(path) end

---
--- Split an environment variable value into an array of paths.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-splitenv)
---@param envpath string Environment variable path string
---@return any ... -- ToDo
function path.splitenv(envpath) end

---
--- Convert path to the path style of the current platform.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-translate)
---@param path string Path string to convert
---@return any ... -- ToDo
function path.translate(path) end

---
--- Convert path to Unix style.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/path#path-unix)
---@param path string Path string
---@return any ... -- ToDo
function path.unix(path) end
