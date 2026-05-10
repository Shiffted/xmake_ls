---@meta
---[os](https://xmake.io/api/scripts/builtin-modules/os)

---@class oslib
os = {}

---@class std.osdate
---@field year integer|string? four digits
---@field month integer|string? 1-12
---@field day integer|string? 1-31
---@field hour integer|string? 0-23
---@field min integer|string? 0-59
---@field sec integer|string? 0-61, due to leap seconds
---@field wday integer|string? 1-7, Sunday is 1
---@field yday integer|string? 1-366
---@field isdst boolean? daylight saving flag, a boolean.

---
--- Add values to one environment variable.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-addenv)
---@scope script
---@param name string Environment variable name
---@param value string Value to add
---@return any ... -- ToDo
function os.addenv(name, value) end

---
--- Add values to one environment variable with a given separator.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-addenvp)
---@scope script
---@param name string Environment variable name
---@param value string Value to add
---@param separator string Separator string
---@return any ... -- ToDo
function os.addenvp(name, value, separator) end

---
--- Add environment variables to current envs, return the all old envs.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-addenvs)
---@scope script
---@param envs table Environment variables table to add
---@return any ... -- ToDo
function os.addenvs(envs) end

---
--- Get current system architecture.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-arch)
---@return any ... -- ToDo
function os.arch() end

---
--- Convert argument list to command line string.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-args)
---@scope script
---@param args any[] Arguments array
---@param options? table Options table
---@return any ... -- ToDo
function os.args(args, options) end

---
--- Parse command line string into argument list.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-argv)
---@scope script
---@param command string Command line string
---@param options? table Options table
---@return any ... -- ToDo
function os.argv(command, options) end

---
--- Register an exit callback function.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-atexit)
---@scope script
---@param on_exit function Callback function to execute on exit
---@return any ... -- ToDo
function os.atexit(on_exit) end

---
--- Enter the specified directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-cd)
---@scope script
---@param path string Directory path
---@return any ... -- ToDo
function os.cd(path) end

---
--- Copy files or directories.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-cp)
---@scope script
---@param source string Source path or pattern
---@param destination string Destination path
---@param options? table Options table
---@return any ... -- ToDo
function os.cp(source, destination, options) end

---
--- Get cpu information.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-cpuinfo)
---@param key? string CPU info key
---@return any ... -- ToDo
function os.cpuinfo(key) end

---
--- Get the current directory path.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-curdir)
---@return any ... -- ToDo
function os.curdir() end

---
--- Returns a string or a table containing date and time, formatted according
--- to the given string `format`.
---
--- If the `time` argument is present, this is the time to be formatted (see
--- the `os.time` function for a description of this value). Otherwise,
--- `date` formats the current time.
---
--- If `format` starts with '`!`', then the date is formatted in Coordinated
--- Universal Time. After this optional character, if `format` is the string
--- "`*t`", then `date` returns a table with the following fields:
---
--- **`year`** (four digits)
--- **`month`** (1–12)
--- **`day`** (1-31)
--- **`hour`** (0-23)
--- **`min`** (0-59)
--- **`sec`** (0-61), due to leap seconds
--- **`wday`** (weekday, 1–7, Sunday is 1)
--- **`yday`** (day of the year, 1–366)
--- **`isdst`** (daylight saving flag, a boolean). This last field may be absent
--- if the information is not available.
---
--- If `format` is not "`*t`", then `date` returns the date as a string,
--- formatted according to the same rules as the ISO C function `strftime`.
---
--- When called without arguments, `date` returns a reasonable date and time
--- representation that depends on the host system and on the current locale.
--- (More specifically, `os.date()` is equivalent to `os.date("%c")`.)
---
--- On non-POSIX systems, this function may be not thread safe because of its
--- reliance on C function `gmtime` and C function `localtime`.
---
---@overload fun(fmt:"*t", time: number):table
---@overload fun(fmt:"!*t", time: number):table
---@param format string
---@param time? number
---@return string|std.osdate
function os.date(format, time) end

---
--- Get default parallel jobs.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-default_njob)
---@return any ... -- ToDo
function os.default_njob() end

---
--- Traverse to get all the directories under the specified directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-dirs)
---@param pattern string File pattern
---@return any ... -- ToDo
function os.dirs(pattern) end

---
---TODO: document `os.emptydir`.
---@scope script
---@return any ... -- ToDo
function os.emptydir(...) end

---
--- Echo running native shell commands.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-exec)
---@scope script
---@param command string Command string
---@param ... any Variable arguments for command
---@return any ... -- ToDo
function os.exec(command, ...) end

---
--- Echo running native shell commands with parameter list.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-execv)
---@scope script
---@param program string Program name
---@param args table Arguments table
---@param options? table Options table
---@return any ... -- ToDo
function os.execv(program, args, options) end

---
--- Determine if a file or directory exists.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-exists)
---@param path string File or directory path
---@return any ... -- ToDo
function os.exists(path) end

---
--- Exit the program.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-exit)
---@scope script
---@param code number Exit code
---@return any ... -- ToDo
function os.exit(code) end

---
--- Get features.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-features)
---@scope script
---@return any ... -- ToDo
function os.features() end

---
--- Traverse to get all files and directories under the specified directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-filedirs)
---@param pattern string File pattern
---@return any ... -- ToDo
function os.filedirs(pattern) end

---
--- Traverse to get all the files in the specified directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-files)
---@param pattern string File pattern
---@param options? table
---@return any ... -- ToDo
function os.files(pattern, options?) end

---
--- Get file size.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-filesize)
---@param filepath string File path
---@return any ... -- ToDo
function os.filesize(filepath) end

---
--- Test if the os has a case sensitive filesystem.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-fscase)
---@scope script
---@return any ... -- ToDo
function os.fscase() end

---
--- Get system environment variables.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-getenv)
---@param name string Environment variable name
---@return any ... -- ToDo
function os.getenv(name) end

---
--- Get all current environment variables.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-getenvs)
---@scope script
---@return any ... -- ToDo
function os.getenvs() end

---
--- Get the current process ID.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-getpid)
---@scope script
---@return any ... -- ToDo
function os.getpid() end

---
---TODO: document `os.getwinsize`.
---@scope script
---@return any ... -- ToDo
function os.getwinsize(...) end

---
--- Get the operating system of the current host.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-host)
---@return any ... -- ToDo
function os.host() end

---
--- Quietly running native shell commands and getting output.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-iorun)
---@scope script
---@param command string Command string
---@param ... any Variable arguments for command
---@return any ... -- ToDo
function os.iorun(command, ...) end

---
--- Run the native shell command quietly and get the output with a list of parameters.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-iorunv)
---@scope script
---@param program string Program name
---@param args table Arguments table
---@param options? table Options table
---@return any ... -- ToDo
function os.iorunv(program, args, options) end

---
--- Test if a given arch is the current.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-is_arch)
---@scope script
---@param ... string Architecture names
---@return any ... -- ToDo
function os.is_arch(arch, ...) end

---
--- Test if a given host is the current.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-is_host)
---@scope script
---@param ... string Host names
---@return any ... -- ToDo
function os.is_host(...) end

---
--- Test if a given sub arch is the current.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-is_subarch)
---@scope script
---@param ... string Sub architecture names
---@return any ... -- ToDo
function os.is_subarch(subarch, ...) end

---
--- Test if a given sub host is the current.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-is_subhost)
---@scope script
---@param ... string Sub host names
---@return any ... -- ToDo
function os.is_subhost(...) end

---
--- Determine if it is a directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-isdir)
---@param path string Directory path
---@return any ... -- ToDo
function os.isdir(path) end

---
--- Test if a file is executable.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-isexec)
---@scope script
---@param path string File path
---@return any ... -- ToDo
function os.isexec(path) end

---
--- Determine if it is a file.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-isfile)
---@param path string File path
---@return any ... -- ToDo
function os.isfile(path) end

---
--- Determine if it is a symbolic link.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-islink)
---@scope script
---@param path string Symbolic link path
---@return any ... -- ToDo
function os.islink(path) end

---
--- Test if xmake is running as root.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-isroot)
---@scope script
---@return any ... -- ToDo
function os.isroot() end

---
--- Join environment variables. Similar to [os.addenvs](#os-addenvs) but with two envs variable.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-joinenvs)
---@scope script
---@param envs1 table First environment variables table
---@param envs2 table Second environment variables table
---@return any ... -- ToDo
function os.joinenvs(envs1, envs2) end

---
--- Create a symlink to a file or directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-ln)
---@scope script
---@param source string Source file or directory path
---@param target string Target symlink path
---@return any ... -- ToDo
function os.ln(source, target) end

---
---TODO: document `os.match`.
---@scope script
---@return any ... -- ToDo
function os.match(...) end

---
--- Get monotonic clock time (milliseconds).
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-mclock)
---@return any ... -- ToDo
function os.mclock() end

---
--- Get memory information.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-meminfo)
---@scope script
---@param key? string Memory info key
---@return any ... -- ToDo
function os.meminfo(key) end

---
--- Create a directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-mkdir)
---@scope script
---@param path string Directory path
---@param ... any Variable arguments, can pass multiple directory paths
---@return any ... -- ToDo
function os.mkdir(path, ...) end

---
--- Get modification time
---
---@param path string
---@return integer|nil
function os.mtime(...) end

---
--- Move to rename a file or directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-mv)
---@scope script
---@param source string Source path or pattern
---@param destination string Destination path
---@return any ... -- ToDo
function os.mv(source, destination) end

---
--- Get the null device path.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-nuldev)
---@scope script
---@param input? boolean
---@return any ... -- ToDo
function os.nuldev(input?) end

---
--- Copy content to the system clipboard.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-pbcopy)
---@scope script
---@param data string String to copy to clipboard
---@return any ... -- ToDo
function os.pbcopy(data) end

---
--- Get content from the system clipboard.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-pbpaste)
---@scope script
---@return any ... -- ToDo
function os.pbpaste() end

---
--- Get the xmake installation main program script directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-programdir)
---@return any ... -- ToDo
function os.programdir() end

---
--- Get the path of the xmake executable.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-programfile)
---@return any ... -- ToDo
function os.programfile() end

---
--- Get the project home directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-projectdir)
---@return any ... -- ToDo
function os.projectdir() end

---
--- Get the project file path.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-projectfile)
---@return any ... -- ToDo
function os.projectfile() end

---
--- Raise an exception and abort the current script.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-raise)
---@scope script
---@param message string Error message
---@return any ... -- ToDo
function os.raise(message) end

---
--- Read the content of a symlink.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-readlink)
---@scope script
---@param path string Symlink path
---@return any ... -- ToDo
function os.readlink(path) end

---
--- Delete files or directory trees.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-rm)
---@scope script
---@param path string File or directory path
---@param options? table
---@return any ... -- ToDo
function os.rm(path, options?) end

---
--- delete only the directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-rmdir)
---@scope script
---@param path string Directory path
---@return any ... -- ToDo
function os.rmdir(path) end

---
--- Quietly running native shell commands.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-run)
---@scope script
---@param command string Command string
---@param ... any Variable arguments for command
---@return any ... -- ToDo
function os.run(command, ...) end

---
--- Quietly running native shell commands with parameter list.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-runv)
---@scope script
---@param program string Program name
---@param args table Arguments table
---@param options? table Options table
---@return any ... -- ToDo
function os.runv(program, args, options) end

---
--- Get the path of the current description script.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-scriptdir)
---@return any ... -- ToDo
function os.scriptdir() end

---
--- Set system environment variables.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-setenv)
---@scope script
---@param name string Environment variable name
---@param value string Environment variable value
---@return any ... -- ToDo
function os.setenv(name, value) end

---
--- Setting environment variables with a given separator.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-setenvp)
---@scope script
---@param name string Environment variable name
---@param value string Environment variable value
---@param separator string Separator string
---@return any ... -- ToDo
function os.setenvp(name, value, separator) end

---
--- Set environment variables. Replace the current envs by a new one and return old envs.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-setenvs)
---@scope script
---@param envs table Environment variables table
---@return any ... -- ToDo
function os.setenvs(envs) end

---
--- Get current shell  (pwsh, cmd, ...).
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-shell)
---@scope script
---@return any ... -- ToDo
function os.shell() end

--- Sleep for specified time
---
---@scope script
---@param ms integer milliseconds
function os.sleep(ms) end

---
---TODO: document `os.strerror`.
---@scope script
---@return any ... -- ToDo
function os.strerror(...) end

---
--- Get Subsystem host architecture.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-subarch)
---@return any ... -- ToDo
function os.subarch() end

---
--- Get Subsystem host.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-subhost)
---@return any ... -- ToDo
function os.subhost() end

---
---TODO: document `os.syserror`.
---@scope script
---@return any ... -- ToDo
function os.syserror(...) end

---
--- Get current terminal (windows-terminal, vscode, ... ).
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-term)
---@return any ... -- ToDo
function os.term() end

---
--- Returns the current time when called without arguments, or a time
--- representing the date and time specified by the given table. This table
--- must have fields `year`, `month`, and `day`, and may have fields `hour`
--- (default is 12), `min` (default is 0), `sec` (default is 0), and `isdst`
--- (default is **nil**). Other fields are ignored. For a description of these
--- fields, see the `os.date` function.
---
--- When the function is called, the values in these fields do not need to be
--- inside their valid ranges. For instance, if `sec` is -10, it means 10 seconds
--- before the time specified by the other fields; if `hour` is 1000, it means
--- 1000 hours after the time specified by the other fields.
---
--- The returned value is a number, whose meaning depends on your system. In
--- POSIX, Windows, and some other systems, this number counts the number of
--- seconds since some given start time (the "epoch"). In other systems, the
--- meaning is not specified, and the number returned by `time` can be used only
--- as an argument to `os.date` and `os.difftime`.
---
--- When called with a table, `os.time` also normalizes all the fields
--- documented in the `os.date` function, so that they represent the same time
--- as before the call but with values inside their valid ranges.
---
---@param date? std.osdateparam
---@return integer
function os.time(date) end

---
--- Get temporary directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-tmpdir)
---@return any ... -- ToDo
function os.tmpdir() end

---
--- Get temporary file path.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-tmpfile)
---@scope script
---@return any ... -- ToDo
function os.tmpfile() end

---
--- Create an empty file or update file timestamp.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-touch)
---@scope script
---@param path string File path
---@param ... any Variable arguments, can pass multiple file paths
---@return any ... -- ToDo
function os.touch(path, ...) end

---
--- Try copying files or directories.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-trycp)
---@scope script
---@param source string Source path or pattern
---@param destination string Destination path
---@return any ... -- ToDo
function os.trycp(source, destination) end

---
--- Try moving a file or directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-trymv)
---@scope script
---@param source string Source path or pattern
---@param destination string Destination path
---@return any ... -- ToDo
function os.trymv(source, destination) end

---
--- Try deleting files or directories.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-tryrm)
---@scope script
---@param path string File or directory path
---@return any ... -- ToDo
function os.tryrm(path) end

---
---TODO: document `os.vcp`.
---@scope script
---@return any ... -- ToDo
function os.vcp(...) end

--- Verbosely execute command and return exit code
---
---@scope script
---@param cmd string
---@return integer|nil code
---@return string? errors
function os.vexec(cmd) end

---
--- Verbosely execute program with arguments and return exit code
---
---@scope script
---@param program string
---@param argv table
---@param opt? table
---@return integer|nil code
---@return string? errors
function os.vexecv(program, argv, opt) end

---
---TODO: document `os.vln`.
---@scope script
---@return any ... -- ToDo
function os.vln(...) end

---
---TODO: document `os.vmv`.
---@scope script
---@return any ... -- ToDo
function os.vmv(...) end

---
---TODO: document `os.vrm`.
---@scope script
---@return any ... -- ToDo
function os.vrm(...) end

---
--- Verbosely run command (print command before running)
---
---@scope script
---@param cmd string
---@return boolean ok
---@return string? errors
function os.vrun(cmd) end

---
--- Verbosely run program with arguments
---
---@scope script
---@param program string
---@param argv table
---@param opt? table
---@return boolean ok
---@return string? errors
function os.vrunv(program, argv, opt) end

---
--- Get the working directory.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/os#os-workingdir)
---@scope script
---@return any ... -- ToDo
function os.workingdir() end

---
--- Get xmake version string, e.g. "2.9.5"
---
---@scope script
---@return string
function os.xmakever(...) end
