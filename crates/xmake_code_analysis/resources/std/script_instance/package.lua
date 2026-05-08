---@meta
---[package](https://xmake.io/api/scripts/package-instance)

---@class Package
local Package = {}

---
--- Add to the values of the package by name.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-add)
---@param key string Configuration key name
---@param value any Value to add
---@return any ... -- ToDo
function Package:add(key, value) end

---
--- Add the given values to the environment variable.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-addenv)
---@return any ... -- ToDo
function Package:addenv() end

---
--- Get the alias of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-alias)
---@return any ... -- ToDo
function Package:alias() end

---
--- Get the architecture of the package (e.g. x86, x64, x86_64).
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-arch)
---@return any ... -- ToDo
function Package:arch() end

---
---TODO: document `package:arch_set`.
---@return any ... -- ToDo
function Package:arch_set(...) end

---
---TODO: document `package:base`.
---@return any ... -- ToDo
function Package:base(...) end

---
---TODO: document `package:branch`.
---@return any ... -- ToDo
function Package:branch(...) end

---
---TODO: document `package:build_addenv`.
---@return any ... -- ToDo
function Package:build_addenv(...) end

---
---TODO: document `package:build_envs`.
---@return any ... -- ToDo
function Package:build_envs(...) end

---
---TODO: document `package:build_getenv`.
---@return any ... -- ToDo
function Package:build_getenv(...) end

---
---TODO: document `package:build_setenv`.
---@return any ... -- ToDo
function Package:build_setenv(...) end

---
---TODO: document `package:builddir`.
---@return any ... -- ToDo
function Package:builddir(...) end

---
--- Get the build hash of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-buildhash)
---@return any ... -- ToDo
function Package:buildhash() end

---
---TODO: document `package:buildir`.
---@return any ... -- ToDo
function Package:buildir(...) end

---
--- Get the cache directory of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-cachedir)
---@return any ... -- ToDo
function Package:cachedir() end

---
--- Wether the given C snippet can be compiled and linked.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-check_csnippets)
---@param snippets string|table Code snippet or code snippet list
---@return any ... -- ToDo
function Package:check_csnippets(snippets) end

---
--- Wether the given C++ snippet can be compiled and linked.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-check_cxxsnippets)
---@param snippets string|table Code snippet or code snippet list
---@return any ... -- ToDo
function Package:check_cxxsnippets(snippets) end

---
--- Wether the given Fortran snippet can be compiled and linked.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-check_fcsnippets)
---@return any ... -- ToDo
function Package:check_fcsnippets() end

---
---TODO: document `package:check_importfiles`.
---@return any ... -- ToDo
function Package:check_importfiles(...) end

---
---TODO: document `package:check_msnippets`.
---@return any ... -- ToDo
function Package:check_msnippets(...) end

---
---TODO: document `package:check_mxxsnippets`.
---@return any ... -- ToDo
function Package:check_mxxsnippets(...) end

---
---TODO: document `package:check_sizeof`.
---@return any ... -- ToDo
function Package:check_sizeof(...) end

---
---TODO: document `package:commit`.
---@return any ... -- ToDo
function Package:commit(...) end

---
---TODO: document `package:compiler`.
---@return any ... -- ToDo
function Package:compiler(...) end

---
---TODO: document `package:component`.
---@return any ... -- ToDo
function Package:component(...) end

---
---TODO: document `package:components`.
---@return any ... -- ToDo
function Package:components(...) end

---
---TODO: document `package:components_default`.
---@return any ... -- ToDo
function Package:components_default(...) end

---
---TODO: document `package:components_deps`.
---@return any ... -- ToDo
function Package:components_deps(...) end

---
---TODO: document `package:components_orderlist`.
---@return any ... -- ToDo
function Package:components_orderlist(...) end

---
--- Get the given configuration value of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-config)
---@return any ... -- ToDo
function Package:config() end

---
--- Set the given configuration value of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-config_set)
---@return any ... -- ToDo
function Package:config_set() end

---
--- Get all configurations of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-configs)
---@return any ... -- ToDo
function Package:configs() end

---
--- Get the currently selected scheme.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-current_scheme)
---@return any ... -- ToDo
function Package:current_scheme() end

---
---TODO: document `package:current_scheme_set`.
---@return any ... -- ToDo
function Package:current_scheme_set(...) end

---
---TODO: document `package:data`.
---@return any ... -- ToDo
function Package:data(...) end

---
---TODO: document `package:data_add`.
---@return any ... -- ToDo
function Package:data_add(...) end

---
---TODO: document `package:data_set`.
---@return any ... -- ToDo
function Package:data_set(...) end

---
--- Wether the the package gets built with debug mode.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-debug)
---@return any ... -- ToDo
function Package:debug() end

---
--- Get a dependency of the package by name. The name needs to be a dependency of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-dep)
---@param name string Dependency name
---@return any ... -- ToDo
function Package:dep(name) end

---
--- Get all dependencies of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-deps)
---@return any ... -- ToDo
function Package:deps() end

---
--- Get the description of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-description)
---@return any ... -- ToDo
function Package:description() end

---
---TODO: document `package:displayname`.
---@return any ... -- ToDo
function Package:displayname(...) end

---
---TODO: document `package:displayname_set`.
---@return any ... -- ToDo
function Package:displayname_set(...) end

---
--- Get the exported environment variables of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-envs)
---@return any ... -- ToDo
function Package:envs() end

---
---TODO: document `package:envs_enter`.
---@return any ... -- ToDo
function Package:envs_enter(...) end

---
---TODO: document `package:exists`.
---@return any ... -- ToDo
function Package:exists(...) end

---
---TODO: document `package:extraconf`.
---@return any ... -- ToDo
function Package:extraconf(...) end

---
---TODO: document `package:extraconf_set`.
---@return any ... -- ToDo
function Package:extraconf_set(...) end

---
---TODO: document `package:extsources`.
---@return any ... -- ToDo
function Package:extsources(...) end

---
---TODO: document `package:fetch`.
---@return any ... -- ToDo
function Package:fetch(...) end

---
---TODO: document `package:fetch_librarydeps`.
---@return any ... -- ToDo
function Package:fetch_librarydeps(...) end

---
---TODO: document `package:filelock`.
---@return any ... -- ToDo
function Package:filelock(...) end

---
---TODO: document `package:find_package`.
---@return any ... -- ToDo
function Package:find_package(...) end

---
---TODO: document `package:find_tool`.
---@return any ... -- ToDo
function Package:find_tool(...) end

---
---TODO: document `package:fullname`.
---@return any ... -- ToDo
function Package:fullname(...) end

---
--- Get the values of the package by name.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-get)
---@param key string Configuration key name
---@return any ... -- ToDo
function Package:get(key) end

---
--- Get the given environment variable.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-getenv)
---@return any ... -- ToDo
function Package:getenv() end

---
---TODO: document `package:gitref`.
---@return any ... -- ToDo
function Package:gitref(...) end

---
---TODO: document `package:group`.
---@return any ... -- ToDo
function Package:group(...) end

---
---TODO: document `package:has_cflags`.
---@return any ... -- ToDo
function Package:has_cflags(...) end

---
--- Wether the package has the given C functions.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-has_cfuncs)
---@return any ... -- ToDo
function Package:has_cfuncs() end

---
--- Wether the package has the given C header files.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-has_cincludes)
---@param includes string|table Include file or include file list
---@return any ... -- ToDo
function Package:has_cincludes(includes) end

---
--- Wether the package has the given C types.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-has_ctypes)
---@param types string|table Type name or type name list
---@return any ... -- ToDo
function Package:has_ctypes(types) end

---
---TODO: document `package:has_cxxflags`.
---@return any ... -- ToDo
function Package:has_cxxflags(...) end

---
--- Wether the package has the given C++ functions.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-has_cxxfuncs)
---@param funcs string|table Function name or function name list
---@return any ... -- ToDo
function Package:has_cxxfuncs(funcs) end

---
--- Wether the package has the given C++ header files.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-has_cxxincludes)
---@param includes string|table Include file or include file list
---@return any ... -- ToDo
function Package:has_cxxincludes(includes) end

---
--- Wether the package has the given C++ types.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-has_cxxtypes)
---@param types string|table Type name or type name list
---@return any ... -- ToDo
function Package:has_cxxtypes(types) end

---
---TODO: document `package:has_features`.
---@return any ... -- ToDo
function Package:has_features(...) end

---
---TODO: document `package:has_runtime`.
---@return any ... -- ToDo
function Package:has_runtime(...) end

---
---TODO: document `package:has_source`.
---@return any ... -- ToDo
function Package:has_source(...) end

---
---TODO: document `package:has_tool`.
---@return any ... -- ToDo
function Package:has_tool(...) end

---
--- Get the installation directory of the package. Can also be used to get a subdirectory. If the given directory tree does not exist it will be created.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-installdir)
---@return any ... -- ToDo
function Package:installdir() end

---
--- Wether the current platform is one of the given platforms.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-is_arch)
---@param arch string Architecture name
---@return any ... -- ToDo
function Package:is_arch(arch) end

---
---TODO: document `package:is_arch64`.
---@return any ... -- ToDo
function Package:is_arch64(...) end

---
--- Wether the package is of kind binary.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-is_binary)
---@return any ... -- ToDo
function Package:is_binary() end

---
---TODO: document `package:is_binary_embed`.
---@return any ... -- ToDo
function Package:is_binary_embed(...) end

---
---TODO: document `package:is_built`.
---@return any ... -- ToDo
function Package:is_built(...) end

---
--- Wether the package is getting cross-compiled.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-is_cross)
---@return any ... -- ToDo
function Package:is_cross() end

---
--- Wether the package is build with debug mode (Same as `package:config("debug")`).
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-is_debug)
---@return any ... -- ToDo
function Package:is_debug() end

---
---TODO: document `package:is_fetchonly`.
---@return any ... -- ToDo
function Package:is_fetchonly(...) end

---
---TODO: document `package:is_headeronly`.
---@return any ... -- ToDo
function Package:is_headeronly(...) end

---
---TODO: document `package:is_host`.
---@return any ... -- ToDo
function Package:is_host(...) end

---
--- Wether the package is of kind library.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-is_library)
---@return any ... -- ToDo
function Package:is_library() end

---
---TODO: document `package:is_local`.
---@return any ... -- ToDo
function Package:is_local(...) end

---
---TODO: document `package:is_moduleonly`.
---@return any ... -- ToDo
function Package:is_moduleonly(...) end

---
---TODO: document `package:is_optional`.
---@return any ... -- ToDo
function Package:is_optional(...) end

---
---TODO: document `package:is_parallelize`.
---@return any ... -- ToDo
function Package:is_parallelize(...) end

---
--- Wether the current platform is one of the given platforms.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-is_plat)
---@param plat string Platform name
---@return any ... -- ToDo
function Package:is_plat(plat) end

---
---TODO: document `package:is_precompiled`.
---@return any ... -- ToDo
function Package:is_precompiled(...) end

---
---TODO: document `package:is_private`.
---@return any ... -- ToDo
function Package:is_private(...) end

---
---TODO: document `package:is_source_embed`.
---@return any ... -- ToDo
function Package:is_source_embed(...) end

---
--- Wether the package is supported by the current platform and architecture.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-is_supported)
---@return any ... -- ToDo
function Package:is_supported() end

---
---TODO: document `package:is_system`.
---@return any ... -- ToDo
function Package:is_system(...) end

---
--- Wether the currently targeted architecture is one of the given architectures.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-is_targetarch)
---@return any ... -- ToDo
function Package:is_targetarch() end

---
--- Wether the currently targeted OS is one of the given OS.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-is_targetos)
---@return any ... -- ToDo
function Package:is_targetos() end

---
---TODO: document `package:is_template`.
---@return any ... -- ToDo
function Package:is_template(...) end

---
--- Wether the package is provided by a thirdparty package manager (e.g. brew, conan, vcpkg).
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-is_thirdparty)
---@return any ... -- ToDo
function Package:is_thirdparty() end

---
--- Wether the package is of kind toolchain.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-is_toolchain)
---@return any ... -- ToDo
function Package:is_toolchain() end

---
--- Wether the package is directly required by the user (e.g. xmake.lua).
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-is_toplevel)
---@return any ... -- ToDo
function Package:is_toplevel() end

---
---TODO: document `package:is_verify`.
---@return any ... -- ToDo
function Package:is_verify(...) end

---
--- Get the kind of the package. Can be any of:.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-kind)
---@return any ... -- ToDo
function Package:kind() end

---
---TODO: document `package:label`.
---@return any ... -- ToDo
function Package:label(...) end

---
---TODO: document `package:librarydep`.
---@return any ... -- ToDo
function Package:librarydep(...) end

---
---TODO: document `package:librarydeps`.
---@return any ... -- ToDo
function Package:librarydeps(...) end

---
--- Get the license of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-license)
---@return any ... -- ToDo
function Package:license() end

---
---TODO: document `package:linker`.
---@return any ... -- ToDo
function Package:linker(...) end

---
---TODO: document `package:lock`.
---@return any ... -- ToDo
function Package:lock(...) end

---
---TODO: document `package:manifest_file`.
---@return any ... -- ToDo
function Package:manifest_file(...) end

---
---TODO: document `package:manifest_load`.
---@return any ... -- ToDo
function Package:manifest_load(...) end

---
---TODO: document `package:manifest_save`.
---@return any ... -- ToDo
function Package:manifest_save(...) end

---
---TODO: document `package:mark_as_pathenv`.
---@return any ... -- ToDo
function Package:mark_as_pathenv(...) end

---
---TODO: document `package:memcache`.
---@return any ... -- ToDo
function Package:memcache(...) end

---
---TODO: document `package:mode`.
---@return any ... -- ToDo
function Package:mode(...) end

---
--- Get the name of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-name)
---@return any ... -- ToDo
function Package:name() end

---
---TODO: document `package:namespace`.
---@return any ... -- ToDo
function Package:namespace(...) end

---
---TODO: document `package:new`.
---@return any ... -- ToDo
function Package:new(...) end

---
---TODO: document `package:orderdeps`.
---@return any ... -- ToDo
function Package:orderdeps(...) end

---
---TODO: document `package:originfile`.
---@return any ... -- ToDo
function Package:originfile(...) end

---
---TODO: document `package:originfile_set`.
---@return any ... -- ToDo
function Package:originfile_set(...) end

---
---TODO: document `package:parents`.
---@return any ... -- ToDo
function Package:parents(...) end

---
---TODO: document `package:parents_add`.
---@return any ... -- ToDo
function Package:parents_add(...) end

---
--- Get all patches of the current version.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-patches)
---@return any ... -- ToDo
function Package:patches() end

---
---TODO: document `package:plaindeps`.
---@return any ... -- ToDo
function Package:plaindeps(...) end

---
--- Get the platform of the package. Can be any of:.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-plat)
---@return any ... -- ToDo
function Package:plat() end

---
---TODO: document `package:plat_set`.
---@return any ... -- ToDo
function Package:plat_set(...) end

---
---TODO: document `package:policy`.
---@return any ... -- ToDo
function Package:policy(...) end

---
---TODO: document `package:prepare_install_scheme`.
---@return any ... -- ToDo
function Package:prepare_install_scheme(...) end

---
---TODO: document `package:references`.
---@return any ... -- ToDo
function Package:references(...) end

---
---TODO: document `package:repo`.
---@return any ... -- ToDo
function Package:repo(...) end

---
---TODO: document `package:requireinfo`.
---@return any ... -- ToDo
function Package:requireinfo(...) end

---
---TODO: document `package:requireinfo_set`.
---@return any ... -- ToDo
function Package:requireinfo_set(...) end

---
---TODO: document `package:resource`.
---@return any ... -- ToDo
function Package:resource(...) end

---
---TODO: document `package:resourcedir`.
---@return any ... -- ToDo
function Package:resourcedir(...) end

---
---TODO: document `package:resourcefile`.
---@return any ... -- ToDo
function Package:resourcefile(...) end

---
---TODO: document `package:resources`.
---@return any ... -- ToDo
function Package:resources(...) end

---
---TODO: document `package:revision`.
---@return any ... -- ToDo
function Package:revision(...) end

---
---TODO: document `package:rulesdir`.
---@return any ... -- ToDo
function Package:rulesdir(...) end

---
---TODO: document `package:runtimes`.
---@return any ... -- ToDo
function Package:runtimes(...) end

---
--- Get the scheme instance by name.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-scheme)
---@param name string Scheme name
---@return any ... -- ToDo
function Package:scheme(name) end

---
---TODO: document `package:schemes`.
---@return any ... -- ToDo
function Package:schemes(...) end

---
---TODO: document `package:schemes_orderlist`.
---@return any ... -- ToDo
function Package:schemes_orderlist(...) end

---
---TODO: document `package:script`.
---@return any ... -- ToDo
function Package:script(...) end

---
--- Get the directory where the xmake.lua of the package lies.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-scriptdir)
---@return any ... -- ToDo
function Package:scriptdir() end

---
--- Set the values of the package by name.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-set)
---@param key string Configuration key name
---@param value any Configuration value
---@return any ... -- ToDo
function Package:set(key, value) end

---
--- Set the given environment variable. Overwrites the variable.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-setenv)
---@return any ... -- ToDo
function Package:setenv() end

---
---TODO: document `package:sourcedir`.
---@return any ... -- ToDo
function Package:sourcedir(...) end

---
--- Get the sha256 checksum of an URL alias.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-sourcehash)
---@return any ... -- ToDo
function Package:sourcehash() end

---
---TODO: document `package:sourceinfo`.
---@return any ... -- ToDo
function Package:sourceinfo(...) end

---
---TODO: document `package:tag`.
---@return any ... -- ToDo
function Package:tag(...) end

---
--- Get the targeted architecture of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-targetarch)
---@return any ... -- ToDo
function Package:targetarch() end

---
--- Get the targeted OS of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-targetos)
---@return any ... -- ToDo
function Package:targetos() end

---
---TODO: document `package:tool`.
---@return any ... -- ToDo
function Package:tool(...) end

---
---TODO: document `package:toolchain`.
---@return any ... -- ToDo
function Package:toolchain(...) end

---
---TODO: document `package:toolchains`.
---@return any ... -- ToDo
function Package:toolchains(...) end

---
---TODO: document `package:toolconfig`.
---@return any ... -- ToDo
function Package:toolconfig(...) end

---
---TODO: document `package:type`.
---@return any ... -- ToDo
function Package:type(...) end

---
---TODO: document `package:unlock`.
---@return any ... -- ToDo
function Package:unlock(...) end

---
---TODO: document `package:url_alias`.
---@return any ... -- ToDo
function Package:url_alias(...) end

---
---TODO: document `package:url_excludes`.
---@return any ... -- ToDo
function Package:url_excludes(...) end

---
---TODO: document `package:url_http_headers`.
---@return any ... -- ToDo
function Package:url_http_headers(...) end

---
---TODO: document `package:url_includes`.
---@return any ... -- ToDo
function Package:url_includes(...) end

---
---TODO: document `package:url_version`.
---@return any ... -- ToDo
function Package:url_version(...) end

---
--- Get the URLs of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-urls)
---@return any ... -- ToDo
function Package:urls() end

---
---TODO: document `package:urls_set`.
---@return any ... -- ToDo
function Package:urls_set(...) end

---
---TODO: document `package:use_external_includes`.
---@return any ... -- ToDo
function Package:use_external_includes(...) end

---
---TODO: document `package:use_precompiled_artifacts`.
---@return any ... -- ToDo
function Package:use_precompiled_artifacts(...) end

---
--- Get the version of the package.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-version)
---@return any ... -- ToDo
function Package:version() end

---
---TODO: document `package:version_set`.
---@return any ... -- ToDo
function Package:version_set(...) end

---
--- Get the version of the package as string.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-version_str)
---@return any ... -- ToDo
function Package:version_str() end

---
--- Get all version strings of the package. Returns a table containing all versions as strings.
---
---[Open in browser](https://xmake.io/api/scripts/package-instance#package-versions)
---@return any ... -- ToDo
function Package:versions() end
