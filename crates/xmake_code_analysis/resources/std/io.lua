---@meta
---[io](https://xmake.io/api/scripts/builtin-modules/io)

---@scope script
---@class iolib
io = {}

---
--- * `io.stderr`: Standard error.
---@type file
io.stderr = nil

---
--- * `io.stdin`: Standard in.
---@type file
io.stdin = nil

---
--- * `io.stdout`: Standard out.
---@type file
io.stdout = nil

---
--- read and display all contents of the file.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-cat)
---@param filename string File path string
---@return any ... -- ToDo
function io.cat(filename) end

---
--- Convert file encoding.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-convert)
---@param inputfile string Input file path
---@param outputfile string Output file path
---@param opt? table
---@return any ... -- ToDo
function io.convert(inputfile, outputfile, opt?) end

---
--- Flush standard output buffer.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-flush)
---@return any ... -- ToDo
function io.flush() end

---
--- Full text replaces the contents of the specified path file.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-gsub)
---@param filename string File path string
---@param pattern string Pattern string
---@param replacement string Replacement string
---@param options? table
---@return any ... -- ToDo
function io.gsub(filename, pattern, replacement, options?) end

---
--- Insert text before a line number in a file.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-insert)
---@param filepath string File path string
---@param lineidx number Line number to insert before
---@param text string Text content to insert
---@param options? table
---@return any ... -- ToDo
function io.insert(filepath, lineidx, text, options?) end

---
--- Check if a file is a terminal device.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-isatty)
---@param file? file
---@return any ... -- ToDo
function io.isatty(file?) end

---
--- Read all lines from file.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-lines)
---@param filename string File path string
---@param options table Options table (optional)
---@return any ... -- ToDo
function io.lines(filename, options) end

---
--- Load all table contents from the specified path file deserialization.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-load)
---@param filename string File path string
---@return any ... -- ToDo
function io.load(filename) end

---
--- Open file for reading and writing.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-open)
---@param filename string File path string
---@param mode string Open mode string
---@param options table Options table (optional)
---@return any ... -- ToDo
function io.open(filename, mode, options) end

---
--- Open a lock of a file.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-openlock)
---@param filename string File path string
---@return any ... -- ToDo
function io.openlock(filename) end

---
--- Formatted output content to file with newline.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-print)
---@param filename string File path string
---@param formatstring string Format string
---@param ... any Variable arguments for formatting
---@return any ... -- ToDo
function io.print(filename, formatstring, ...) end

---
--- Formatted output to file without line breaks.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-printf)
---@param filename string File path string
---@param formatstring string Format string
---@param ... any Variable arguments for formatting
---@return any ... -- ToDo
function io.printf(filename, formatstring, ...) end

---
--- Read data from standard input.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-read)
---@param fmt? string
---@return any ... -- ToDo
function io.read(fmt?) end

---
--- Check if standard input is readable.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-readable)
---@return any ... -- ToDo
function io.readable() end

---
--- Read everything from the specified path file.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-readfile)
---@param filename string File path string
---@param options table Options table (optional)
---@return any ... -- ToDo
function io.readfile(filename, options) end

---
--- Replace text of the given file and return the replaced data.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-replace)
---@param filename string File path string
---@param pattern string Pattern string
---@param replacement string Replacement string
---@param options table Options table (optional)
---@return any ... -- ToDo
function io.replace(filename, pattern, replacement, options) end

---
--- Serialize all table contents to the specified path file.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-save)
---@param filename string File path string
---@param data table Table data to serialize
---@return any ... -- ToDo
function io.save(filename, data) end

---
--- Get a std file.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-stdfile)
---@param stdname string Standard file name string
---@return any ... -- ToDo
function io.stdfile(stdname) end

---
--- Read and display the tail content of the file.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-tail)
---@param filename string File path string
---@param lines number Number of lines to read
---@return any ... -- ToDo
function io.tail(filename, lines) end

---
--- Write data to standard output.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-write)
---@param ... any Content to write
---@return any ... -- ToDo
function io.write(...) end

---
--- Write all content to the specified path file.
---
---[Open in browser](https://xmake.io/api/scripts/builtin-modules/io#io-writefile)
---@param filename string File path string
---@param data string Data string to write
---@param options? table
---@return any ... -- ToDo
function io.writefile(filename, data, options?) end

