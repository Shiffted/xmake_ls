---@meta
-- debug

---@scope script
---@class debuglib
debug = {}

---@alias debuglib.collectgarbage_opt
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

---@alias debuglib.InfoWhat
---|+"n"     # `name` 和 `namewhat`
---|+"S"     # `source`，`short_src`，`linedefined`，`lalinedefined`，和 `what`
---|+"l"     # `currentline`
---|+"t"     # `istailcall`
---|+"u"     # `nups`、`nparams` 和 `isvararg`
---|+"f"     # `func`
---|+"r"     # `ftransfer` 和 `ntransfer`
---|+"L"     # `activelines`
---| string

---@alias debuglib.Hookmask
---|+"c" # Calls hook when Lua calls a function.
---|+"r" # Calls hook when Lua returns from a function.
---|+"l" # Calls hook when Lua enters a new line of code.

---@class debuglib.DebugInfo
---@field name            string?
---@field namewhat        string?
---@field source          string?
---@field short_src       string?
---@field linedefined     integer?
---@field lastlinedefined integer?
---@field what            string?
---@field currentline     integer?
---@field istailcall      boolean?
---@field nups            integer?
---@field nparams         integer?
---@field isvararg        boolean?
---@field func            function?
---@field ftransfer       integer?
---@field ntransfer       integer?
---@field activelines     table?

---
--- This function is a generic interface to the garbage collector. It performs
--- different functions according to its first argument, `opt`:
---
--- **"collect"**: performs a full garbage-collection cycle. This is the default
--- option.
--- **"stop"**: stops automatic execution of the garbage collector. The
--- collector will run only when explicitly invoked, until a call to restart it.
--- **"restart"**: restarts automatic execution of the garbage collector.
--- **"count"**: returns the total memory in use by Lua in Kbytes. The value has
--- a fractional part, so that it multiplied by 1024 gives the exact number of
--- bytes in use by Lua (except for overflows).
--- **"step"**: performs a garbage-collection step. The step "size" is
--- controlled by `arg`. With a zero value, the collector will perform one basic
--- (indivisible) step. For non-zero values, the collector will perform as if
--- that amount of memory (in KBytes) had been allocated by Lua. Returns
--- **true** if the step finished a collection cycle.
--- **"setpause"**: sets `arg` as the new value for the *pause* of the collector
--- (see §2.5). Returns the previous value for *pause`.
--- **"incremental"**: Change the collector mode to incremental. This option can
--- be followed by three numbers: the garbage-collector pause, the step
--- multiplier, and the step size.
--- **"generational"**: Change the collector mode to generational. This option
--- can be followed by two numbers: the garbage-collector minor multiplier and
--- the major multiplier.
--- **"isrunning"**: returns a boolean that tells whether the collector is
--- running (i.e., not stopped).
---
---@param opt? debuglib.collectgarbage_opt
---@param ... any
---@return any
function debug.collectgarbage(opt, ...) end

---
--- Enters an interactive mode with the user, running each string that the user
--- enters. Using simple commands and other debug facilities, the user can
--- inspect global and local variables, change their values, evaluate
--- expressions, and so on. A line containing only the word `cont` finishes this
--- function, so that the caller continues its execution.
---
--- Note that commands for `debug.debug` are not lexically nested within any
--- function, and so have no direct access to local variables.
function debug.debug() end

---
---@version 5.1
---
---Returns the environment of object `o` .
---
---@param o any
---@return table
---@nodiscard
function debug.getfenv(o) end

---
--- Returns the current hook settings of the thread, as three values: the
--- current hook function, the current hook mask, and the current hook count
--- (as set by the `debug.sethook` function).
---
---@overload fun():thread
---@param thread thread
---@return thread
function debug.gethook(thread) end

---
--- Returns a table with information about a function. You can give the
--- function directly, or you can give a number as the value of `f`,
--- which means the function running at level `f` of the call stack
--- of the given thread: level 0 is the current function (`getinfo` itself);
--- level 1 is the function that called `getinfo` (except for tail calls, which
--- do not count on the stack); and so on. If `f` is a number larger than
--- the number of active functions, then `getinfo` returns **nil**.
---
--- The returned table can contain all the fields returned by `lua_getinfo`,
--- with the string `what` describing which fields to fill in. The default for
--- `what` is to get all information available, except the table of valid
--- lines. If present, the option '`f`' adds a field named `func` with the
--- function itself. If present, the option '`L`' adds a field named
--- `activelines` with the table of valid lines.
---
--- For instance, the expression `debug.getinfo(1,"n").name` returns a table
--- with a name for the current function, if a reasonable name can be found,
--- and the expression `debug.getinfo(print)` returns a table with all available
--- information about the `print` function.
---
---@overload fun(f: int|function, what?: debuglib.InfoWhat):debuglib.DebugInfo
---@param thread thread
---@param f integer|function
---@param what? debuglib.InfoWhat
---@return debuglib.DebugInfo
---@nodiscard
function debug.getinfo(thread, f, what) end

---
--- @version >5.2, JIT
---
--- This function returns the name and the value of the local variable with
--- index `local` of the function at level `level f` of the stack. This function
--- accesses not only explicit local variables, but also parameters,
--- temporaries, etc.
---
--- The first parameter or local variable has index 1, and so on, following the
--- order that they are declared in the code, counting only the variables that
--- are active in the current scope of the function. Negative indices refer to
--- vararg parameters; -1 is the first vararg parameter. The function returns
--- **nil** if there is no variable with the given index, and raises an error
--- when called with a level out of range. (You can call `debug.getinfo` to
--- check whether the level is valid.)
---
--- Variable names starting with '(' (open parenthesis) represent variables with
--- no known names (internal variables such as loop control variables, and
--- variables from chunks saved without debug information).
---
--- The parameter `f` may also be a function. In that case, `getlocal` returns
--- only the name of function parameters.
---
--- @overload fun(f: integer, integer): string?, any?
--- @overload fun(f: function, integer): string?
--- @overload fun(thread: thread, f: function, integer): string?
--- @param thread thread
--- @param f integer
--- @param index integer
--- @return string? name
--- @return any? value
--- @nodiscard
function debug.getlocal(thread, f, index) end

---
--- @version 5.1
---
--- This function returns the name and the value of the local variable with
--- index `index` of the function at level `level` of the stack. (The first
--- parameter or local variable has index 1, and so on, until the last active
--- local variable). The function returns **nil** if there is no local variable
--- with the given index, and raises an error when called with a level out of
--- range. (You can call `debug.getinfo` to check whether the level is valid.)
---
--- Variable names starting with `'('` (open parentheses) represent internal
--- variables (loop control variables, temporaries, and C function locals).
---
--- @overload fun(f: integer, integer): string, any
--- @param thread thread
--- @param lvl integer
--- @param index integer
--- @return string? name
--- @return any? value
--- @nodiscard
function debug.getlocal(thread, lvl, index) end

---
--- Returns the metatable of the given `value` or **nil** if it does not have
--- a metatable.
---
---@param object any
---@return table?
---@nodiscard
function debug.getmetatable(object) end

---
--- Returns the registry table.
---
---@return table
---@nodiscard
function debug.getregistry() end

---
--- This function returns the name and the value of the upvalue with index
--- `up` of the function `f`. The function returns **nil** if there is no
--- upvalue with the given index.
---
--- Variable names starting with '(' (open parenthesis) represent variables with
--- no known names (variables from chunks saved without debug information).
---
---@param f function
---@param up integer
---@return string name
---@return any    value
---@nodiscard
function debug.getupvalue(f, up) end

---
--- Returns the `n`-th user value associated to the userdata `u` plus a boolean,
--- **false** if the userdata does not have that value.
---
---@param u userdata
---@param n integer
---@return any
---@return boolean
function debug.getuservalue(u, n) end

---
---TODO: document `debug.global`.
---@return any ... -- ToDo
function debug.global(...) end

---
--- Checks whether `v1` is equal to `v2`, without the `__eq` metamethod. Returns
--- a boolean.
---
---@param v1 any
---@param v2 any
---@return boolean
function debug.rawequal(v1, v2) end

---
--- Gets the real value of `table[index]`, the `__index` metamethod. `table`
--- must be a table; `index` may be any value.
---
---@generic T, K
---@param table T
---@param index std.ConstTpl<K>
---@return std.RawGet<T, K>
function debug.rawget(table, index) end

---
---@version >5.2
---
--- Returns the length of the object `v`, which must be a table or a string, without
--- invoking any metamethod. Returns an integer number.
---
---@param v string|table
---@return integer
function debug.rawlen(v) end

---
--- Sets the real value of `table[index]` to `value`, without invoking the
--- `__newindex` metamethod. `table` must be a table, `index` any value
--- different from **nil** and NaN, and `value` any Lua value.
---
---@param table table
---@param index any
---@param value any
function debug.rawset(table, index, value) end

---
--- Loads the given module. The function starts by looking into the
--- 'package.loaded' table to determine whether `modname` is already
--- loaded. If it is, then `require` returns the value stored at
--- `package.loaded[modname]`. Otherwise, it tries to find a *loader* for
--- the module.
---
--- To find a loader, `require` is guided by the `package.searchers` sequence.
--- By changing this sequence, we can change how `require` looks for a module.
--- The following explanation is based on the default configuration for
--- `package.searchers`.
---
--- First `require` queries `package.preload[modname]`. If it has a value,
--- this value (which should be a function) is the loader. Otherwise `require`
--- searches for a Lua loader using the path stored in `package.path`. If
--- that also fails, it searches for a C loader using the path stored in
--- `package.cpath`. If that also fails, it tries an *all-in-one* loader (see
--- `package.loaders`).
---
--- Once a loader is found, `require` calls the loader with a two argument:
--- `modname` and an extra value dependent on how it got the loader. (If the
--- loader came from a file, this extra value is the file name.) If the loader
--- returns any non-nil value, require assigns the returned value to
--- `package.loaded[modname]`. If the loader does not return a non-nil value and
--- has not assigned any value to `package.loaded[modname]`, then `require`
--- assigns true to this entry. In any case, require returns the final value of
--- `package.loaded[modname]`.
---
--- If there is any error loading or running the module, or if it cannot find
--- any loader for the module, then `require` raises an error.
---
---@param modname string
---@return any
function debug.require(modname) end

---
---### **Deprecated in `Lua 5.4.2`**
---
---Sets a new limit for the C stack. This limit controls how deeply nested calls can go in Lua, with the intent of avoiding a stack overflow.
---
---In case of success, this function returns the old limit. In case of error, it returns `false`.
---
---@deprecated
---@param limit integer
---@return integer|boolean
function debug.setcstacklimit(limit) end

---
---@version 5.1, JIT
---
---Sets the environment of the given `object` to the given `table` .
---
---@generic T
---@param object T
---@param env table
---@return T object
function debug.setfenv(object, env) end

---
--- Sets the given function as a hook. The string `mask` and the number `count`
--- describe when the hook will be called. The string mask may have any
--- combination of the following characters, with the given meaning:
---
--- * `"c"`: the hook is called every time Lua calls a function;
--- * `"r"`: the hook is called every time Lua returns from a function;
--- * `"l"`: the hook is called every time Lua enters a new line of code.
---
--- Moreover, with a `count` different from zero, the hook is called after every
--- `count` instructions.
---
--- When called without arguments, `debug.sethook` turns off the hook.
---
--- When the hook is called, its first parameter is a string describing
--- the event that has triggered its call: `"call"`, (or `"tail
--- call"`), `"return"`, `"line"`, and `"count"`. For line events, the hook also
--- gets the new line number as its second parameter. Inside a hook, you can
--- call `getinfo` with level 2 to get more information about the running
--- function (level 0 is the `getinfo` function, and level 1 is the hook
--- function)
---
---@overload fun(hook:(fun():any), mask:debuglib.Hookmask)
---@param thread thread
---@param hook fun():any
---@param mask? debuglib.Hookmask
---@param count? integer
function debug.sethook(thread, hook, mask, count) end

---
--- This function assigns the value `value` to the local variable with
--- index `local` of the function at level `level` of the stack. The function
--- returns **nil** if there is no local variable with the given index, and
--- raises an error when called with a `level` out of range. (You can call
--- `getinfo` to check whether the level is valid.) Otherwise, it returns the
--- name of the local variable.
---
---@overload fun(level:integer, var:string, value:any):string
---@param thread thread
---@param level integer
---@param var string
---@param value any
---@return string
function debug.setlocal(thread, level, var, value) end

---
--- Sets the metatable for the given `object` to the given `table` (which
--- can be **nil**). Returns value.
---
---@generic T
---@param value T
---@param meta? table
---@return T value
---@overload fun(value: table, meta: T): T
function debug.setmetatable(value, meta) end

---
--- This function assigns the value `value` to the upvalue with index `up`
--- of the function `f`. The function returns **nil** if there is no upvalue
--- with the given index. Otherwise, it returns the name of the upvalue.
---
---@param f fun():any
---@param up integer
---@param value any
---@return string
function debug.setupvalue(f, up, value) end

---
--- Sets the given `value` as the `n`-th associated to the given `udata`.
--- `udata` must be a full userdata.
---
--- Returns `udata`, or **nil** if the userdata does not have that value.
---
---@param udata userdata
---@param value any
---@param n integer
---@return userdata
function debug.setuservalue(udata, value, n) end

---
--- Generates a traceback of the call stack.
--- When called with no arguments, returns a traceback of the current thread.
--- When the first argument is a thread, the traceback is generated for that thread;
--- the optional second argument (if a string) is prepended to the traceback, and the
--- optional third argument sets the level where the traceback should start (default is 1).
--- When the first argument is not a thread and not nil, it is treated as an optional message.
--- In that case, the traceback is generated for the current thread and the second argument,
--- if provided, specifies the starting level.
---
---@overload fun(): string
---@overload fun(message?: string, level?: integer): string
---@param thread? thread|integer  Optional thread or nil. If not a thread, it is interpreted as the message.
---@param message? string Optional message to prepend to the traceback. If not a string (or nil), it is returned as is.
---@param level? integer  Optional level from which to start the traceback (default is 1).
---@return string
function debug.traceback(thread, message, level) end

---
---@version >5.2, JIT
---
--- Returns a unique identifier (as a light userdata) for the upvalue numbered
--- `n` from the given function.
---
--- These unique identifiers allow a program to check whether different
--- closures share upvalues. Lua closures that share an upvalue (that is, that
--- access a same external local variable) will return identical ids for those
--- upvalue indices.
---
---@param f function
---@param n integer
---@return lightuserdata id
---@nodiscard
function debug.upvalueid(f, n) end

---
---@version >5.2, JIT
---
--- Make the `n1`-th upvalue of the Lua closure f1 refer to the `n2`-th upvalue
--- of the Lua closure f2.
---
---@param f1 fun():any
---@param n1 integer
---@param f2 fun():any
---@param n2 integer
function debug.upvaluejoin(f1, n1, f2, n2) end
