---@meta no-require
-- global

---@alias std.collectgarbage_opt
---|>"collect" # performs a full garbage-collection cycle. This is the default option.
---| "stop" # stops automatic execution of the garbage collector. The collector will run only when explicitly invoked, until a call to restart it.
---| "restart" # restarts automatic execution of the garbage collector.
---| "count" # returns the total memory in use by Lua in Kbytes. The value has a fractional part, so that it multiplied by 1024 gives the exact number of bytes in use by Lua (except for overflows).
---| "step" # performs a garbage-collection step. The step "size" is controlled by `arg`. With a zero value, the collector will perform one basic (indivisible) step. For non-zero values, the collector will perform as if Lua had allocated that amount of memory (in KBytes). Returns true if the step finished a collection cycle.
---| "setpause" # sets `arg` as the new value for the *pause* of the collector (see §2.5). Returns the previous value for *pause*.
---| "setstepmul" # sets `arg` as the new value for the *step multiplier* of the collector (see §2.5). Returns the previous value for *step*.
---| "incremental" # Change the collector mode to incremental. This option can be followed by three numbers: the garbage-collector pause, the step multiplier, and the step size.
---| "generational" # Change the collector mode to generational. This option can be followed by two numbers: the garbage-collector minor multiplier and the major multiplier.
---| "isrunning" # returns a boolean that tells whether the collector is running (i.e., not stopped).

---
--- A global variable (not a function) that holds the global environment. Lua
--- itself does not use this variable; changing its value does not affect any
--- environment, nor vice versa.
---@type global
_G = {}

---@alias std.loadmode
---| "b" # only binary chunks
---| "t" # only text chunks
---| "bt" # both binary and text

---@class std.metatable
---@field __mode? 'v'|'k'|'kv'
---@field __metatable? any
---@field __tostring? (fun(t):string)
---@field __gc? fun(t)
---@field __add? fun(t1,t2):any
---@field __sub? fun(t1,t2):any
---@field __mul? fun(t1,t2):any
---@field __div? fun(t1,t2):any
---@field __mod? fun(t1,t2):any
---@field __pow? fun(t1,t2):any
---@field __unm? fun(t):any
---@field __idiv? fun(t1,t2):any
---@field __band? fun(t1,t2):any
---@field __bor? fun(t1,t2):any
---@field __bxor? fun(t1,t2):any
---@field __bnot? fun(t):any
---@field __shl? fun(t1,t2):any
---@field __shr? fun(t1,t2):any
---@field __concat? fun(t1,t2):any
---@field __len? fun(t):integer
---@field __eq? fun(t1,t2):boolean
---@field __lt? fun(t1,t2):boolean
---@field __le? fun(t1,t2):boolean
---@field __index? table|fun(t,k):any
---@field __newindex? table|fun(t,k,v)
---@field __call? fun(t,...): any...
---@field __pairs? fun(t):((fun(t,k,v):any,any),any,any)
---@field __close? fun(t,errobj):any

---@alias std.type
---| "nil"
---| "number"
---| "string"
---| "boolean"
---| "table"
---| "function"
---| "thread"
---| "userdata"

---
--- A global variable (not a function) that holds a string containing the
--- running Lua version. The current value of this variable is "`Lua 5.3`".
_VERSION = "Lua 5.4"

---@type string[]
arg = {}

---
--- This is an incorrect annotation, but truly supporting _ENV would completely break the variable analysis path.
--- For now, let's treat it as a global variable.
---@version > 5.3
---@type global
_ENV = {}

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#add_moduledirs)
---@scope root
---@param ... string|string[] Module directory path
---@return nil
function add_moduledirs(...) end

---
---TODO: document `add_packagedirs`.
---@scope root
---@return nil
function add_packagedirs(...) end

---
---TODO: document `add_platformdirs`.
---@scope root
---@return nil
function add_platformdirs(...) end

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#add_plugindirs)
---@scope root
---@param dirs string|array Plugin directory path string or array
---@param ... any Variable parameters, can pass multiple directory paths
---@return nil
function add_plugindirs(dirs, ...) end

---@class AddRepositoriesOptions
---@field rootdir? string Repository name and URL string or array, format: "name url"

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#add_repositories)
---@scope root
---@param ... string|array Repository name and URL string or array, format: "name url"
---@param options? AddRepositoriesOptions
---@return nil
function add_repositories(..., options) end

---@class AddRequireconfsOptions
---@field rootdir? string Repository name and URL string or array, format: "name url"

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#add_requireconfs)
---@scope root
---@param packages string|array Package name string or array, supports pattern matching like "*" or "libpng.zlib"
---@param options? {configs?: table, override?: boolean, version?: string, debug?: boolean, ...: any}
---@return nil
function add_requireconfs(packages, ..., options) end

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#add_requires)
---@scope root
---@param packages string|array Package name string or array, supports semantic version like "tbox 1.6.*"
---@param ... any Other package-specific configuration parameters
---@param options? {optional?: boolean, system?: boolean, verify?: boolean, debug?: boolean, private?: boolean, configs?: table, alias?: string, ...: any}
---@return nil
function add_requires(packages, ..., options) end

---
---TODO: document `add_toolchaindirs`.
---@scope root
---@return nil
function add_toolchaindirs(...) end

---
--- Calls error if the value of its argument `v` is false (i.e., **nil** or
--- **false**); otherwise, returns all its arguments. In case of error,
--- `message` is the error object; when absent, it defaults to "assertion
--- failed!"
---
---@scope script
---@generic T, T1
---@param v T
---@param ... T1...
---@return std.NotNull<T>, T1...
function assert(v, ...) end

---
---TODO: document `catch`.
---@scope script
---@return any ... -- ToDo
function catch(...) end

---
---TODO: document `cprint`.
---@scope script
---@return nil
function cprint(...) end

---
---TODO: document `cprintf`.
---@scope script
---@return nil
function cprintf(...) end

---
---TODO: document `dprint`.
---@scope script
---@return nil
function dprint(...) end

---
---TODO: document `dprintf`.
---@scope script
---@return nil
function dprintf(...) end

---
---TODO: document `finally`.
---@scope script
---@return any ... -- ToDo
function finally(...) end

---
---TODO: document `find_package`.
---@scope script
---@return any ... -- ToDo
function find_package(...) end

---
---TODO: document `find_packages`.
---@scope script
---@return any ... -- ToDo
function find_packages(...) end

---
---TODO: document `format`.
---@return any ... -- ToDo
function format(...) end

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#get_config)
---@param name string Configuration option name string
---@return any ... -- ToDo
function get_config(name) end

---
---TODO: document `getenv`.
---@scope description
---@return any ... -- ToDo
function getenv(...) end

---
---[Open in browser](https://xmake.io/api/description/conditions#has_config)
---@param configs string Configuration name string
---@param ... any Variable parameters, can pass multiple configuration names
---@return any ... -- ToDo
function has_config(configs, ...) end

---
---[Open in browser](https://xmake.io/api/description/conditions#has_package)
---@param packages string Package name string
---@param ... any Variable parameters, can pass multiple package names
---@return any ... -- ToDo
function has_package(packages, ...) end

---
---TODO: document `import`.
---@scope script
---@return any ... -- ToDo
function import(...) end

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#includes)
---@scope root
---@param paths string|array Sub-project file or directory path, supports pattern matching like "**/xmake.lua"
---@param ... any Variable parameters, can pass multiple paths
---@param options? {rootdir?: string}
---@return any ... -- ToDo
function includes(paths, ..., options) end

---
---TODO: document `inherit`.
---@scope script
---@return any ... -- ToDo
function inherit(...) end

---
--- Returns three values (an iterator function, the table `t`, and 0) so that
--- the construction
--- > `for i,v in ipairs(t) do` *body* `end`
--- will iterate over the key–value pairs (1,`t[1]`), (2,`t[2]`), ..., up to
--- the first absent index.
---
---@generic V
---@param t V[]|table<int, V>|{[int]: V}
---@return fun(tbl: any):int, V
function ipairs(t) end

---
---TODO: document `irpairs`.
---@scope script
---@return any ... -- ToDo
function irpairs(...) end

---
---[Open in browser](https://xmake.io/api/description/conditions#is_arch)
---@param arch string Architecture name string
---@param ... any Variable parameters, can pass multiple architecture names
---@return any ... -- ToDo
function is_arch(arch, ...) end

---
---[Open in browser](https://xmake.io/api/description/conditions#is_config)
---@param name string Configuration option name string
---@param values string Configuration value string
---@param ... any Variable parameters, can pass multiple values
---@return any ... -- ToDo
function is_config(name, values, ...) end

---
---[Open in browser](https://xmake.io/api/description/conditions#is_cross)
---@scope description
---@return any ... -- ToDo
function is_cross() end

---
---[Open in browser](https://xmake.io/api/description/conditions#is_host)
---@param host string Host system name string
---@param ... any Variable parameters, can pass multiple host names
---@return any ... -- ToDo
function is_host(host, ...) end

---
---[Open in browser](https://xmake.io/api/description/conditions#is_kind)
---@scope description
---@param kind string Target kind name string
---@param ... any Variable parameters, can pass multiple kind names
---@return any ... -- ToDo
function is_kind(kind, ...) end

---
---[Open in browser](https://xmake.io/api/description/conditions#is_mode)
---@param mode string Compilation mode name string
---@param ... any Variable parameters, can pass multiple mode names
---@return any ... -- ToDo
function is_mode(mode, ...) end

---
---[Open in browser](https://xmake.io/api/description/conditions#is_os)
---@scope description
---@param os string Operating system name string
---@param ... any Variable parameters, can pass multiple OS names
---@return any ... -- ToDo
function is_os(os, ...) end

---
---[Open in browser](https://xmake.io/api/description/conditions#is_plat)
---@param plat string Platform name string
---@param ... any Variable parameters, can pass multiple platform names
---@return any ... -- ToDo
function is_plat(plat, ...) end

---
---[Open in browser](https://xmake.io/api/description/conditions#is_subhost)
---@param subhost string Subsystem name string
---@param ... any Variable parameters, can pass multiple subsystem names
---@return any ... -- ToDo
function is_subhost(subhost, ...) end

---
--- If `t` has a metamethod `__pairs`, calls it with `t` as argument and returns
--- the first three results from the call.
---
--- Otherwise, returns three values: the `next` function, the table `t`, and
--- **nil**, so that the construction
--- `for k,v in pairs(t) do *body* end`
--- will iterate over all key–value pairs of table `t`.
---
--- See function `next` for the caveats of modifying the table during its
--- traversal.
---
---@generic K, V
---@param t table<K, V> | V[] | {[K]: V}
---@return fun(tbl: any):K, V
function pairs(t) end

---
--- Receives any number of arguments, and prints their values to `stdout`,
--- using the `tostring` function to convert them to strings. `print` is not
--- intended for formatted output, but only as a quick way to show a value,
--- for instance for debugging. For complete control over the output, use
--- `string.format` and `io.write`.
---
---@return nil
function print(...) end

---
---TODO: document `printf`.
---@return nil
function printf(...) end

---
---TODO: document `raise`.
---@scope script
---@return any ... -- ToDo
function raise(...) end

---
---TODO: document `todisplay`.
---@scope script
---@return any ... -- ToDo
function todisplay(...) end

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#set_allowedarchs)
---@scope root
---@param archs string|array Allowed compilation architecture string or array, supports platform-specific format like "windows
---@param ... any Variable parameters, can pass multiple architecture specifications
---@return nil
function set_allowedarchs(archs, ...) end

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#set_allowedmodes)
---@scope root
---@param modes string|array Allowed compilation mode name string or array
---@param ... any Variable parameters, can pass multiple mode names
---@return nil
function set_allowedmodes(modes, ...) end

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#set_allowedplats)
---@scope root
---@param platforms string|array Allowed compilation platform name string or array
---@param ... any Variable parameters, can pass multiple platform names
---@return nil
function set_allowedplats(platforms, ...) end

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#set_config)
---@scope root
---@param name string Configuration option name string
---@param value string|boolean|number Configuration value, can be string, boolean, or number
---@return nil
function set_config(name, value) end

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#set_defaultarchs)
---@scope root
---@param archs string|array Default compilation architecture string or array, supports platform-specific format like "iphoneos
---@param ... any Variable parameters, can pass multiple architecture specifications
---@return nil
function set_defaultarchs(archs, ...) end

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#set_defaultmode)
---@scope root
---@param mode string Default compilation mode name, e.g. "release", "debug", "releasedbg"
---@return nil
function set_defaultmode(mode) end

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#set_defaultplat)
---@scope root
---@param platform string Default compilation platform name, e.g. "iphoneos", "windows"
---@return nil
function set_defaultplat(platform) end

---
---TODO: document `set_description`.
---@scope root
---@return nil
function set_description(...) end

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#set_project)
---@scope root
---@param name string Project name string
---@return nil
function set_project(name) end

---
---[Open in browser](https://xmake.io/api/description/global-interfaces#set_xmakever)
---@scope root
---@param version string Minimum required xmake version string, e.g. "2.1.0"
---@return nil
function set_xmakever(version) end

---
--- When called with no `base`, `tonumber` tries to convert its argument to a
--- number. If the argument is already a number or a string convertible to a
--- number, then `tonumber` returns this number; otherwise, it returns **nil**.
---
--- The conversion of strings can result in integers or floats, according to the
--- lexical conventions of Lua. (The string may have leading and trailing
--- spaces and a sign.)
---
--- When called with `base`, then e must be a string to be interpreted as an
--- integer numeral in that base. The base may be any integer between 2 and 36,
--- inclusive. In bases above 10, the letter 'A' (in either upper or lower case)
--- represents 10, 'B' represents 11, and so forth, with 'Z' representing 35. If
--- the string `e` is not a valid numeral in the given base, the function
--- returns **nil**.
---
---@overload fun(e: string, base: integer):integer?
---@param e any
---@return number?
---@nodiscard
function tonumber(e) end

---
--- Receives a value of any type and converts it to a string in a human-readable
--- format. (For complete control of how numbers are converted, use `string
--- .format`).
---
--- If the metatable of `v` has a `__tostring` field, then `tostring` calls
--- the corresponding value with `v` as argument, and uses the result of the
--- call as its result.
---
---@param v any
---@return string
function tostring(v) end

---
---TODO: document `try`.
---@scope script
---@return any ... -- ToDo
function try(...) end

---
--- Returns the type of its only argument, coded as a string. The possible
--- results of this function are "`nil`" (a string, not the value **nil**),
--- "`number`", "`string`", "`boolean`", "`table`", "`function`", "`thread`",
--- and "`userdata`".
---
---@param v any
---@return std.type type
function type(v) end

---
---@version 5.1, JIT
---
---@generic T, Start: integer, End: integer
---@param i? std.ConstTpl<Start>
---@param j? std.ConstTpl<End>
---@param list T
---@return std.Unpack<T, Start, End>
function unpack(...) end

---
---TODO: document `val`.
---@scope script
---@return any ... -- ToDo
function val(...) end

---
---TODO: document `vformat`.
---@scope script
---@return any ... -- ToDo
function vformat(...) end

---
---TODO: document `vprint`.
---@scope script
---@return nil
function vprint(...) end

---
---TODO: document `vprintf`.
---@scope script
---@return nil
function vprintf(...) end

---
---TODO: document `wprint`.
---@scope script
---@return nil
function wprint(...) end


-- TODO: xmake doesn't support the functions below, but some tests expect them to be present.

---@generic T, R, R1
---@param f sync fun(...: T...): R1, R...
---@param ... T...
---@return boolean, R1|string, R...
function pcall(f, ...) end

---@generic T, K
---@param table T
---@param index std.ConstTpl<K>
---@return std.RawGet<T, K>
function rawget(table, index) end

---@generic T, Num: integer | '#'
---@param index std.ConstTpl<Num>
---@param ... T...
---@return std.Select<T..., Num>
function select(index, ...) end
