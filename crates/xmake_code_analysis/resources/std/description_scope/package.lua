---@meta
---[package](https://xmake.io/api/description/package-dependencies)

---@alias PackageConfigType string|"string"|"boolean"|"number"

---@class PackageAddComponentsOption
---@field deps string|string[]? Component dependencies array
---@field default boolean?

---@class PackageAddConfigsOption
---@generic T: string|boolean|number
---@field description string? Configuration description string
---@field default T? Default value for the configuration
---@field values T[]? Allowed values array
---@field type PackageConfigType? Configuration type: "string", "boolean", "number"
---@field readonly boolean? Prevent the modification of the configuration value

---@class PackageAddLinkgroupsOption
---@field name string? Group name for linking
---@field group boolean? Whether to treat as a group

---@class PackageAddUrlsOption
---@field alias string? URL alias for different sources
---@field excludes string[]? Files to exclude from extraction
---@field version fun(version: string): string? Version transformation function
---@field http_headers string[]? HTTP headers for download

---@class PackageSetKindOption
---@field headeronly boolean? For library type, whether it's header-only library

---@class PackageSetUrlsOption
---@field excludes string[]? Files to exclude from extraction
---@field version fun(version: string): string? Version transformation function
---@field http_headers string[]? HTTP headers for download

---@class PackageOpt
---@field sourcedir string? Source directory
---@field url string? Package url
---@field url_alias string? Package url alias

---
--- Define a package
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#package)
---@param name string Package name
---@param func? fun(): nil Package scoped function
function package(name, func) end

---
--- Define a package
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#package)
---@param name string Package name
---@param attr table Package attributes
function package(name, attr) end

---
--- End package definition
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#package)
function package_end() end

---
---TODO: document `package.add_arflags`.
---@scope package
---@return any ... -- ToDo
function add_arflags(...) end

---
---TODO: document `package.add_asflags`.
---@scope package
---@return any ... -- ToDo
function add_asflags(...) end

---
--- Add executable file directory.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_bindirs)
---@scope package
---@param ... string|string[] Executable directory path string or array
function add_bindirs(...) end

---
---TODO: document `package.add_cflags`.
---@scope package
---@return any ... -- ToDo
function add_cflags(...) end

---
--- Add package components.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_components)
---@scope package
---@param ... string|string[] Component name string or array
---@param options? PackageAddComponentsOption
function add_components(..., options) end

---
--- Add package configs.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_configs)
---@scope package
---@param name string Configuration parameter name
---@param options? PackageAddConfigsOption
function add_configs(name, options) end

---
---TODO: document `package.add_cuflags`.
---@scope package
---@return any ... -- ToDo
function add_cuflags(...) end

---
---TODO: document `package.add_culdflags`.
---@scope package
---@return any ... -- ToDo
function add_culdflags(...) end

---
---TODO: document `package.add_cxflags`.
---@scope package
---@return any ... -- ToDo
function add_cxflags(...) end

---
---TODO: document `package.add_cxxflags`.
---@scope package
---@return any ... -- ToDo
function add_cxxflags(...) end

---
---TODO: document `package.add_dcflags`.
---@scope package
---@return any ... -- ToDo
function add_dcflags(...) end

---
--- Add definition.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_defines)
---@scope package
---@param ... string|string[] Macro definition string or array
function add_defines(...) end

---
--- Add package dependencies.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_deps)
---@scope package
---@param ... string|string[] Dependency package name string or array
function add_deps(...) end

---
--- Add external package sources.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_extsources)
---@scope package
---@param ... string|string[] External source string or array, format: "pkgconfig::name" or "brew::name"
function add_extsources(...) end

---
---TODO: document `package.add_fcflags`.
---@scope package
---@return any ... -- ToDo
function add_fcflags(...) end

---
---TODO: document `package.add_frameworkdirs`.
---@scope package
---@return any ... -- ToDo
function add_frameworkdirs(...) end

---
--- Add frameworks.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_frameworks)
---@scope package
---@param ... string|string[] Framework name string or array
function add_frameworks(...) end

---
---TODO: document `package.add_imports`.
---@scope package
---@return any ... -- ToDo
function add_imports(...) end

---
--- Add include directories.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_includedirs)
---@scope package
---@param ... string|string[] Include directory path string or array
function add_includedirs(...) end

---
---TODO: document `package.add_ldflags`.
---@scope package
---@return any ... -- ToDo
function add_ldflags(...) end

---
--- Add link directories.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_linkdirs)
---@scope package
---@param ... string|string[] Link directory path string or array
function add_linkdirs(...) end

---
--- Configure the link group of the package.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_linkgroups)
---@scope package
---@param ... string|string[] Link group name string or array
---@param options? PackageAddLinkgroupsOption
function add_linkgroups(..., options) end

---
--- Adjust the link order within the package.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_linkorders)
---@scope package
---@param ... string|string[] Link order string or array
function add_linkorders(...) end

---
--- Add package links.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_links)
---@scope package
---@param ... string|string[] Library link name string or array
function add_links(...) end

---
---TODO: document `package.add_mflags`.
---@scope package
---@return any ... -- ToDo
function add_mflags(...) end

---
---TODO: document `package.add_mxflags`.
---@scope package
---@return any ... -- ToDo
function add_mxflags(...) end

---
---TODO: document `package.add_mxxflags`.
---@scope package
---@return any ... -- ToDo
function add_mxxflags(...) end

---
--- Add package patches.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_patches)
---@scope package
---@param version string Package version for which patch applies
---@param url string Patch file URL
---@param hash string SHA256 hash value for patch verification
function add_patches(version, url, hash) end

---
---TODO: document `package.add_pcflags`.
---@scope package
---@return any ... -- ToDo
function add_pcflags(...) end

---
---TODO: document `package.add_resources`.
---@scope package
---@return any ... -- ToDo
function add_resources(...) end

---
---TODO: document `package.add_rpathdirs`.
---@scope package
---@return any ... -- ToDo
function add_rpathdirs(...) end

---
--- Add package schemes.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_schemes)
---@scope package
---@param ... string|string[] Scheme name string or array
function add_schemes(...) end

---
---TODO: document `package.add_shflags`.
---@scope package
---@return any ... -- ToDo
function add_shflags(...) end

---
---TODO: document `package.add_sysincludedirs`.
---@scope package
---@return any ... -- ToDo
function add_sysincludedirs(...) end

---
--- Add system library links.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_syslinks)
---@scope package
---@param ... string|string[] System library name string or array
function add_syslinks(...) end

---
---TODO: document `package.add_undefines`.
---@scope package
---@return any ... -- ToDo
function add_undefines(...) end

---
--- Add package urls.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_urls)
---@scope package
---@param ... string|string[] Package source URL string or array
---@param options? PackageAddUrlsOption
function add_urls(..., options) end

---
--- Adding a list of package versions.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_versionfiles)
---@scope package
---@param file string Version file path containing version and hash pairs
function add_versionfiles(file) end

---
--- Add package versions.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#add_versions)
---@scope package
---@param version string Package version string
---@param hash string SHA256 hash value for verification
function add_versions(version, hash) end

---
---TODO: document `package.add_zcflags`.
---@scope package
---@return any ... -- ToDo
function add_zcflags(...) end

---
---TODO: document `package.is_arch`.
---@scope package
---@return any ... -- ToDo
function is_arch(...) end

---
---TODO: document `package.is_host`.
---@scope package
---@return any ... -- ToDo
function is_host(...) end

---
---TODO: document `package.is_mode`.
---@scope package
---@return any ... -- ToDo
function is_mode(...) end

---
---TODO: document `package.is_plat`.
---@scope package
---@return any ... -- ToDo
function is_plat(...) end

---
--- Check whether the package supports the current platform.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#on_check)
---@scope package
---@param ... string|string[] Platform filter string or array, optional
---@param script fun(package: Package): nil Check script function with package parameter
function on_check(..., script) end

---
--- Define package component.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#on_component)
---@scope package
---@param component string Component name string, optional (if not provided, applies to all components)
---@param script fun(package: Package, component: Any): nil Component configuration script function with package and component parameters
function on_component(component, script) end

---
--- Custom download package.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#on_download)
---@scope package
---@param script fun(package: Package, opt: PackageOpt): nil Download script function with package and opt parameters
function on_download(script) end

---
--- Fetch package libraries.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#on_fetch)
---@scope package
---@param ... string|string[] Platform filter string or array, optional
---@param script fun(package: Package, opt: PackageOpt): table Fetch script function with package and opt parameters
function on_fetch(..., script) end

---
--- Installation package.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#on_install)
---@scope package
---@param ... string|string[] Platform filter string or array, optional
---@param script fun(package: Package): nil Install script function with package parameter
function on_install(..., script) end

---
--- Load package configuration.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#on_load)
---@scope package
---@param script fun(package: Package): nil Package load script function with package parameter
function on_load(script) end

---
---TODO: document `package.on_source`.
---@scope package
---@return any ... -- ToDo
function on_source(...) end

---
--- Test package.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#on_test)
---@scope package
---@param script fun(package: Package): nil Test script function with package parameter
function on_test(script) end

---
---TODO: document `package.set_arch`.
---@scope package
---@return any ... -- ToDo
function set_arch(...) end

---
--- Inherit package configuration.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#set_base)
---@scope package
---@param package string Base package name to inherit from
function set_base(package) end

---
---TODO: document `package.set_cachedir`.
---@scope package
---@return any ... -- ToDo
function set_cachedir(...) end

---
--- Set package description.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#set_description)
---@scope package
---@param description string Package description string
function set_description(description) end

---
--- Set package homepage.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#set_homepage)
---@scope package
---@param url string Package homepage URL string
function set_homepage(url) end

---
---TODO: document `package.set_installdir`.
---@scope package
---@return any ... -- ToDo
function set_installdir(...) end

---
---TODO: document `package.set_installtips`.
---@scope package
---@return any ... -- ToDo
function set_installtips(...) end

---
--- Set package kind.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#set_kind)
---@scope package
---@param kind string|"library"|"binary"|"toolchain" Package type: "library", "binary", "toolchain"
---@param options? PackageSetKindOption
function set_kind(kind, options) end

---
---TODO: document `package.set_license`.
---@scope package
---@return any ... -- ToDo
function set_license(...) end

---
---TODO: document `package.set_parallelize`.
---@scope package
---@return any ... -- ToDo
function set_parallelize(...) end

---
---TODO: document `package.set_plat`.
---@scope package
---@return any ... -- ToDo
function set_plat(...) end

---
---TODO: document `package.set_policy`.
---@scope package
---@return any ... -- ToDo
function set_policy(...) end

---
--- Set the source directory of the package.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#set_sourcedir)
---@scope package
---@param sourcedir string Package source directory path
function set_sourcedir(sourcedir) end

---
--- Set package urls.
---
---[Open in browser](https://xmake.io/api/description/package-dependencies#set_urls)
---@scope package
---@param ... string|string[] Package source URL string or array
---@param options? PackageSetUrlsOption
function set_urls(..., options) end
