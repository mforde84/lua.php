-- -*- lua -*-


------------------------------------------------------------------------
-- Node.js 6.10.3
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-6.2.0"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        Node.js")
whatis("Version:     6.10.3")
whatis("Category:    programming, interpreter")
whatis("Description: Javascript runtime.")
whatis("URL:         https://nodejs.org/en/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Node.js


Product Description
-------------------
Node.js is a JavaScript runtime built on Chrome's V8 JavaScript engine.
Node.js uses an event-driven, non-blocking I/O model that makes it 
lightweight and efficient. Node.js' package ecosystem, npm, is the 
largest ecosystem of open source libraries in the world.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
The following man pages are available:

node(1)


Online documentation is available at:

https://nodejs.org/dist/latest-v6.x/docs/api/

]])


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"man"))

