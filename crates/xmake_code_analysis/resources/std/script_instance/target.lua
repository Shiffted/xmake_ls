---@meta
---[target](https://xmake.io/api/scripts/target-instance)

---@class Target
local Target = {}

---
--- Add to the values of the target by name.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-add)
---@param key string Configuration key name
---@param value any Value to add
---@return any ... -- ToDo
function Target:add(key, value) end

---
---TODO: document `target:arch`.
---@return any ... -- ToDo
function Target:arch(...) end

---
--- Get the artifact file of the target.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-artifactfile)
---@param kind string Target kind
---@return any ... -- ToDo
function Target:artifactfile(kind) end

---
--- Get auto-generated catalog.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-autogendir)
---@return any ... -- ToDo
function Target:autogendir() end

---
---TODO: document `target:autogenfile`.
---@return any ... -- ToDo
function Target:autogenfile(...) end

---
--- Get the base name of the target file.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-basename)
---@return any ... -- ToDo
function Target:basename() end

---
---TODO: document `target:bindir`.
---@return any ... -- ToDo
function Target:bindir(...) end

---
---TODO: document `target:cachekey`.
---@return any ... -- ToDo
function Target:cachekey(...) end

---
---TODO: document `target:check_bigendian`.
---@return any ... -- ToDo
function Target:check_bigendian(...) end

---
--- Detect whether a given piece of C code can be compiled and linked.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-check_csnippets)
---@param snippets string|table Code snippet or code snippet list
---@return any ... -- ToDo
function Target:check_csnippets(snippets) end

---
--- Detect if a given piece of C++ code can be compiled and linked.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-check_cxxsnippets)
---@param snippets string|table Code snippet or code snippet list
---@return any ... -- ToDo
function Target:check_cxxsnippets(snippets) end

---
---TODO: document `target:check_msnippets`.
---@return any ... -- ToDo
function Target:check_msnippets(...) end

---
---TODO: document `target:check_mxxsnippets`.
---@return any ... -- ToDo
function Target:check_mxxsnippets(...) end

---
--- Detect type size.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-check_sizeof)
---@param types string|table Type name or type name list
---@return any ... -- ToDo
function Target:check_sizeof(types) end

---
---TODO: document `target:clone`.
---@return any ... -- ToDo
function Target:clone(...) end

---
---TODO: document `target:compiler`.
---@return any ... -- ToDo
function Target:compiler(...) end

---
---TODO: document `target:configdir`.
---@return any ... -- ToDo
function Target:configdir(...) end

---
---TODO: document `target:configfiles`.
---@return any ... -- ToDo
function Target:configfiles(...) end

---
---TODO: document `target:data`.
---@return any ... -- ToDo
function Target:data(...) end

---
---TODO: document `target:data_add`.
---@return any ... -- ToDo
function Target:data_add(...) end

---
---TODO: document `target:data_set`.
---@return any ... -- ToDo
function Target:data_set(...) end

---
---TODO: document `target:del`.
---@return any ... -- ToDo
function Target:del(...) end

---
---TODO: document `target:dep`.
---@return any ... -- ToDo
function Target:dep(...) end

---
---TODO: document `target:dependfile`.
---@return any ... -- ToDo
function Target:dependfile(...) end

---
---TODO: document `target:dependfiles`.
---@return any ... -- ToDo
function Target:dependfiles(...) end

---
---TODO: document `target:dependir`.
---@return any ... -- ToDo
function Target:dependir(...) end

---
---TODO: document `target:deps`.
---@return any ... -- ToDo
function Target:deps(...) end

---
---TODO: document `target:extraconf`.
---@return any ... -- ToDo
function Target:extraconf(...) end

---
---TODO: document `target:extraconf_from`.
---@return any ... -- ToDo
function Target:extraconf_from(...) end

---
---TODO: document `target:extraconf_set`.
---@return any ... -- ToDo
function Target:extraconf_set(...) end

---
---TODO: document `target:extrafiles`.
---@return any ... -- ToDo
function Target:extrafiles(...) end

---
---TODO: document `target:fileconfig`.
---@return any ... -- ToDo
function Target:fileconfig(...) end

---
---TODO: document `target:fileconfig_add`.
---@return any ... -- ToDo
function Target:fileconfig_add(...) end

---
---TODO: document `target:fileconfig_set`.
---@return any ... -- ToDo
function Target:fileconfig_set(...) end

---
--- Get the target file name.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-filename)
---@return any ... -- ToDo
function Target:filename() end

---
---TODO: document `target:filerules`.
---@return any ... -- ToDo
function Target:filerules(...) end

---
---TODO: document `target:fullname`.
---@return any ... -- ToDo
function Target:fullname(...) end

---
--- Get the values of the target by name.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-get)
---@param key string Configuration key name
---@return any ... -- ToDo
function Target:get(key) end

---
---TODO: document `target:get_from`.
---@return any ... -- ToDo
function Target:get_from(...) end

---
---TODO: document `target:get_from_deps`.
---@return any ... -- ToDo
function Target:get_from_deps(...) end

---
---TODO: document `target:get_from_opts`.
---@return any ... -- ToDo
function Target:get_from_opts(...) end

---
---TODO: document `target:get_from_pkgs`.
---@return any ... -- ToDo
function Target:get_from_pkgs(...) end

---
--- Check whether the target compilation configuration can obtain the given C compilation flags.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-has_cflags)
---@param flags string|table Compilation flags or flag list
---@return any ... -- ToDo
function Target:has_cflags(flags) end

---
---TODO: document `target:has_cfuncs`.
---@return any ... -- ToDo
function Target:has_cfuncs(...) end

---
--- Check whether the target compilation configuration can obtain the given C header file.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-has_cincludes)
---@param includes string|table Include file or include file list
---@return any ... -- ToDo
function Target:has_cincludes(includes) end

---
--- Check whether the target compilation configuration can obtain the given C type.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-has_ctypes)
---@param types string|table Type name or type name list
---@return any ... -- ToDo
function Target:has_ctypes(types) end

---
--- Check whether the target compilation configuration can obtain the given C++ compilation flags.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-has_cxxflags)
---@param flags string|table Compilation flags or flag list
---@return any ... -- ToDo
function Target:has_cxxflags(flags) end

---
--- Check whether the target compilation configuration can obtain the given C++ function.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-has_cxxfuncs)
---@param funcs string|table Function name or function name list
---@return any ... -- ToDo
function Target:has_cxxfuncs(funcs) end

---
--- Check whether the target compilation configuration can obtain the given C++ header file.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-has_cxxincludes)
---@param includes string|table Include file or include file list
---@return any ... -- ToDo
function Target:has_cxxincludes(includes) end

---
--- Check whether the target compilation configuration can get the given C++ type.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-has_cxxtypes)
---@param types string|table Type name or type name list
---@return any ... -- ToDo
function Target:has_cxxtypes(types) end

---
--- Detect if specified C/C++ compiler feature.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-has_features)
---@param features string|table Feature name or feature name list
---@return any ... -- ToDo
function Target:has_features(features) end

---
---TODO: document `target:has_runtime`.
---@return any ... -- ToDo
function Target:has_runtime(...) end

---
---TODO: document `target:has_sourcekind`.
---@return any ... -- ToDo
function Target:has_sourcekind(...) end

---
---TODO: document `target:has_tool`.
---@return any ... -- ToDo
function Target:has_tool(...) end

---
--- Get a list of all header files.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-headerfiles)
---@return any ... -- ToDo
function Target:headerfiles() end

---
---TODO: document `target:includedir`.
---@return any ... -- ToDo
function Target:includedir(...) end

---
---TODO: document `target:info`.
---@return any ... -- ToDo
function Target:info(...) end

---
--- Get the installation directory of the target file.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-installdir)
---@return any ... -- ToDo
function Target:installdir() end

---
---TODO: document `target:installfiles`.
---@return any ... -- ToDo
function Target:installfiles(...) end

---
--- Is the current architecture one of the given architectures.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-is_arch)
---@param arch string Architecture name
---@return any ... -- ToDo
function Target:is_arch(arch) end

---
--- Is the current architecture a 64-bit one.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-is_arch64)
---@return any ... -- ToDo
function Target:is_arch64() end

---
---TODO: document `target:is_binary`.
---@return any ... -- ToDo
function Target:is_binary(...) end

---
---TODO: document `target:is_cross`.
---@return any ... -- ToDo
function Target:is_cross(...) end

---
---TODO: document `target:is_default`.
---@return any ... -- ToDo
function Target:is_default(...) end

---
---TODO: document `target:is_enabled`.
---@return any ... -- ToDo
function Target:is_enabled(...) end

---
---TODO: document `target:is_headeronly`.
---@return any ... -- ToDo
function Target:is_headeronly(...) end

---
---TODO: document `target:is_library`.
---@return any ... -- ToDo
function Target:is_library(...) end

---
---TODO: document `target:is_moduleonly`.
---@return any ... -- ToDo
function Target:is_moduleonly(...) end

---
---TODO: document `target:is_object`.
---@return any ... -- ToDo
function Target:is_object(...) end

---
---TODO: document `target:is_phony`.
---@return any ... -- ToDo
function Target:is_phony(...) end

---
--- Whether the current platform is one of the given platforms.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-is_plat)
---@param plat string Platform name
---@return any ... -- ToDo
function Target:is_plat(plat) end

---
---TODO: document `target:is_rebuilt`.
---@return any ... -- ToDo
function Target:is_rebuilt(...) end

---
---TODO: document `target:is_shared`.
---@return any ... -- ToDo
function Target:is_shared(...) end

---
---TODO: document `target:is_static`.
---@return any ... -- ToDo
function Target:is_static(...) end

---
--- Get the target program type.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-kind)
---@return any ... -- ToDo
function Target:kind() end

---
---TODO: document `target:libdir`.
---@return any ... -- ToDo
function Target:libdir(...) end

---
---TODO: document `target:license`.
---@return any ... -- ToDo
function Target:license(...) end

---
---TODO: document `target:linkargv`.
---@return any ... -- ToDo
function Target:linkargv(...) end

---
---TODO: document `target:linkcmd`.
---@return any ... -- ToDo
function Target:linkcmd(...) end

---
---TODO: document `target:linker`.
---@return any ... -- ToDo
function Target:linker(...) end

---
---TODO: document `target:linkflags`.
---@return any ... -- ToDo
function Target:linkflags(...) end

---
---TODO: document `target:linkname`.
---@return any ... -- ToDo
function Target:linkname(...) end

---
---TODO: document `target:memcache`.
---@return any ... -- ToDo
function Target:memcache(...) end

---
--- Get the name of the target.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-name)
---@return any ... -- ToDo
function Target:name() end

---
---TODO: document `target:name_set`.
---@return any ... -- ToDo
function Target:name_set(...) end

---
---TODO: document `target:namespace`.
---@return any ... -- ToDo
function Target:namespace(...) end

---
---TODO: document `target:new`.
---@return any ... -- ToDo
function Target:new(...) end

---
---TODO: document `target:objectdir`.
---@return any ... -- ToDo
function Target:objectdir(...) end

---
--- Get the object file path.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-objectfile)
---@param sourcefile string Source file path
---@return any ... -- ToDo
function Target:objectfile(sourcefile) end

---
--- Get a list of all object files.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-objectfiles)
---@return any ... -- ToDo
function Target:objectfiles() end

---
---TODO: document `target:opt`.
---@return any ... -- ToDo
function Target:opt(...) end

---
---TODO: document `target:opts`.
---@return any ... -- ToDo
function Target:opts(...) end

---
---TODO: document `target:orderdeps`.
---@return any ... -- ToDo
function Target:orderdeps(...) end

---
---TODO: document `target:orderopts`.
---@return any ... -- ToDo
function Target:orderopts(...) end

---
---TODO: document `target:orderpkgs`.
---@return any ... -- ToDo
function Target:orderpkgs(...) end

---
---TODO: document `target:orderules`.
---@return any ... -- ToDo
function Target:orderules(...) end

---
---TODO: document `target:packagedir`.
---@return any ... -- ToDo
function Target:packagedir(...) end

---
---TODO: document `target:pcheaderfile`.
---@return any ... -- ToDo
function Target:pcheaderfile(...) end

---
---TODO: document `target:pcheaderfile_set`.
---@return any ... -- ToDo
function Target:pcheaderfile_set(...) end

---
---TODO: document `target:pcoutputfile`.
---@return any ... -- ToDo
function Target:pcoutputfile(...) end

---
---TODO: document `target:pkg`.
---@return any ... -- ToDo
function Target:pkg(...) end

---
---TODO: document `target:pkgconfig`.
---@return any ... -- ToDo
function Target:pkgconfig(...) end

---
---TODO: document `target:pkgenvs`.
---@return any ... -- ToDo
function Target:pkgenvs(...) end

---
---TODO: document `target:pkgs`.
---@return any ... -- ToDo
function Target:pkgs(...) end

---
---TODO: document `target:plat`.
---@return any ... -- ToDo
function Target:plat(...) end

---
---TODO: document `target:platform`.
---@return any ... -- ToDo
function Target:platform(...) end

---
---TODO: document `target:policy`.
---@return any ... -- ToDo
function Target:policy(...) end

---
---TODO: document `target:prefixdir`.
---@return any ... -- ToDo
function Target:prefixdir(...) end

---
---TODO: document `target:remove`.
---@return any ... -- ToDo
function Target:remove(...) end

---
---TODO: document `target:rule`.
---@return any ... -- ToDo
function Target:rule(...) end

---
---TODO: document `target:rule_add`.
---@return any ... -- ToDo
function Target:rule_add(...) end

---
---TODO: document `target:rule_enable`.
---@return any ... -- ToDo
function Target:rule_enable(...) end

---
---TODO: document `target:rule_is_enabled`.
---@return any ... -- ToDo
function Target:rule_is_enabled(...) end

---
---TODO: document `target:rules`.
---@return any ... -- ToDo
function Target:rules(...) end

---
---TODO: document `target:rundir`.
---@return any ... -- ToDo
function Target:rundir(...) end

---
---TODO: document `target:runtimes`.
---@return any ... -- ToDo
function Target:runtimes(...) end

---
---TODO: document `target:script`.
---@return any ... -- ToDo
function Target:script(...) end

---
--- Get the xmake.lua directory where the target definition is located.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-scriptdir)
---@return any ... -- ToDo
function Target:scriptdir() end

---
--- Set the values of the target by name.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-set)
---@param key string Configuration key name
---@param value any Configuration value
---@return any ... -- ToDo
function Target:set(key, value) end

---
---TODO: document `target:soname`.
---@return any ... -- ToDo
function Target:soname(...) end

---
--- Get all source files.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-sourcebatches)
---@return any ... -- ToDo
function Target:sourcebatches() end

---
---TODO: document `target:sourcecount`.
---@return any ... -- ToDo
function Target:sourcecount(...) end

---
---TODO: document `target:sourcefiles`.
---@return any ... -- ToDo
function Target:sourcefiles(...) end

---
---TODO: document `target:sourceinfo`.
---@return any ... -- ToDo
function Target:sourceinfo(...) end

---
---TODO: document `target:sourcekind_of`.
---@return any ... -- ToDo
function Target:sourcekind_of(...) end

---
---TODO: document `target:sourcekinds`.
---@return any ... -- ToDo
function Target:sourcekinds(...) end

---
--- Get the symbol file path of the target.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-symbolfile)
---@return any ... -- ToDo
function Target:symbolfile() end

---
--- Get the output directory of the target file.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-targetdir)
---@return any ... -- ToDo
function Target:targetdir() end

---
--- Get the target file path.
---
---[Open in browser](https://xmake.io/api/scripts/target-instance#target-targetfile)
---@return any ... -- ToDo
function Target:targetfile() end

---
---TODO: document `target:targetkind`.
---@return any ... -- ToDo
function Target:targetkind(...) end

---
---TODO: document `target:tool`.
---@return any ... -- ToDo
function Target:tool(...) end

---
---TODO: document `target:toolchain`.
---@return any ... -- ToDo
function Target:toolchain(...) end

---
---TODO: document `target:toolchains`.
---@return any ... -- ToDo
function Target:toolchains(...) end

---
---TODO: document `target:toolconfig`.
---@return any ... -- ToDo
function Target:toolconfig(...) end

---
---TODO: document `target:type`.
---@return any ... -- ToDo
function Target:type(...) end

---
---TODO: document `target:values`.
---@return any ... -- ToDo
function Target:values(...) end

---
---TODO: document `target:values_add`.
---@return any ... -- ToDo
function Target:values_add(...) end

---
---TODO: document `target:values_set`.
---@return any ... -- ToDo
function Target:values_set(...) end

---
---TODO: document `target:version`.
---@return any ... -- ToDo
function Target:version(...) end
