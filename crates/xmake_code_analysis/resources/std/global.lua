---@meta no-require
-- Copyright (c) 2018. tangzx(love.tangzx@qq.com)
--
-- Licensed under the Apache License, Version 2.0 (the "License"); you may not
-- use this file except in compliance with the License. You may obtain a copy of
-- the License at
--
-- http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
-- WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
-- License for the specific language governing permissions and limitations under
-- the License.

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

--- This is an incorrect annotation, but truly supporting _ENV would completely break the variable analysis path.
--- For now, let's treat it as a global variable.
---@version > 5.3
---@type global
_ENV = {}

---
---TODO: document `add_moduledirs`.
---@scope root
---@return any ... -- ToDo
function add_moduledirs(...) end

---
---TODO: document `add_packagedirs`.
---@scope root
---@return any ... -- ToDo
function add_packagedirs(...) end

---
---TODO: document `add_platformdirs`.
---@scope root
---@return any ... -- ToDo
function add_platformdirs(...) end

---
---TODO: document `add_plugindirs`.
---@scope root
---@return any ... -- ToDo
function add_plugindirs(...) end

---
---TODO: document `add_repositories`.
---@scope root
---@return any ... -- ToDo
function add_repositories(...) end

---
---TODO: document `add_requireconfs`.
---@scope root
---@return any ... -- ToDo
function add_requireconfs(...) end

---
---TODO: document `add_requires`.
---@scope root
---@return any ... -- ToDo
function add_requires(...) end

---
---TODO: document `add_toolchaindirs`.
---@scope root
---@return any ... -- ToDo
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
---@return any ... -- ToDo
function cprint(...) end

---
---TODO: document `cprintf`.
---@scope script
---@return any ... -- ToDo
function cprintf(...) end

---
---TODO: document `dprint`.
---@scope script
---@return any ... -- ToDo
function dprint(...) end

---
---TODO: document `dprintf`.
---@scope script
---@return any ... -- ToDo
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
---TODO: document `get_config`.
---@return any ... -- ToDo
function get_config(...) end

---
---TODO: document `getenv`.
---@scope description
---@return any ... -- ToDo
function getenv(...) end

---
---TODO: document `has_config`.
---@return any ... -- ToDo
function has_config(...) end

---
---TODO: document `has_package`.
---@return any ... -- ToDo
function has_package(...) end

---
---TODO: document `import`.
---@scope script
---@return any ... -- ToDo
function import(...) end

---
---TODO: document `includes`.
---@scope root
---@return any ... -- ToDo
function includes(...) end

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
---TODO: document `is_arch`.
---@return any ... -- ToDo
function is_arch(...) end

---
---TODO: document `is_config`.
---@return any ... -- ToDo
function is_config(...) end

---
---TODO: document `is_cross`.
---@scope description
---@return any ... -- ToDo
function is_cross(...) end

---
---TODO: document `is_host`.
---@return any ... -- ToDo
function is_host(...) end

---
---TODO: document `is_kind`.
---@scope description
---@return any ... -- ToDo
function is_kind(...) end

---
---TODO: document `is_mode`.
---@return any ... -- ToDo
function is_mode(...) end

---
---TODO: document `is_os`.
---@scope description
---@return any ... -- ToDo
function is_os(...) end

---
---TODO: document `is_plat`.
---@return any ... -- ToDo
function is_plat(...) end

---
---TODO: document `is_subhost`.
---@return any ... -- ToDo
function is_subhost(...) end

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
function print(...) end

---
---TODO: document `printf`.
---@return any ... -- ToDo
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
---TODO: document `set_allowedarchs`.
---@scope root
---@return any ... -- ToDo
function set_allowedarchs(...) end

---
---TODO: document `set_allowedmodes`.
---@scope root
---@return any ... -- ToDo
function set_allowedmodes(...) end

---
---TODO: document `set_allowedplats`.
---@scope root
---@return any ... -- ToDo
function set_allowedplats(...) end

---
---TODO: document `set_config`.
---@scope root
---@return any ... -- ToDo
function set_config(...) end

---
---TODO: document `set_defaultarchs`.
---@scope root
---@return any ... -- ToDo
function set_defaultarchs(...) end

---
---TODO: document `set_defaultmode`.
---@scope root
---@return any ... -- ToDo
function set_defaultmode(...) end

---
---TODO: document `set_defaultplat`.
---@scope root
---@return any ... -- ToDo
function set_defaultplat(...) end

---
---TODO: document `set_description`.
---@scope root
---@return any ... -- ToDo
function set_description(...) end

---
---TODO: document `set_project`.
---@scope root
---@return any ... -- ToDo
function set_project(...) end

---
---TODO: document `set_xmakever`.
---@scope root
---@return any ... -- ToDo
function set_xmakever(...) end

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
---@return any ... -- ToDo
function vprint(...) end

---
---TODO: document `vprintf`.
---@scope script
---@return any ... -- ToDo
function vprintf(...) end

---
---TODO: document `wprint`.
---@scope script
---@return any ... -- ToDo
function wprint(...) end


-- TODO: xmake doesn't support the functions below, but some tests expect them to be present.

---
--- Calls function `f` with the given arguments in *protected mode*. This
--- means that any error inside `f` is not propagated; instead, `pcall` catches
--- the error and returns a status code. Its first result is the status code (a
--- boolean), which is true if the call succeeds without errors. In such case,
--- `pcall` also returns all results from the call, after this first result. In
--- case of any error, `pcall` returns **false** plus the error message.
---@generic T, R, R1
---@param f sync fun(...: T...): R1, R...
---@param ... T...
---@return boolean, R1|string, R...
function pcall(f, ...) end

---
--- Gets the real value of `table[index]`, the `__index` metamethod. `table`
--- must be a table; `index` may be any value.
---@generic T, K
---@param table T
---@param index std.ConstTpl<K>
---@return std.RawGet<T, K>
function rawget(table, index) end

---
--- If `index` is a number, returns all arguments after argument number
--- `index`. a negative number indexes from the end (-1 is the last argument).
--- Otherwise, `index` must be the string "#", and `select` returns
--- the total number of extra arguments it received.
---@generic T, Num: integer | '#'
---@param index std.ConstTpl<Num>
---@param ... T...
---@return std.Select<T..., Num>
function select(index, ...) end
