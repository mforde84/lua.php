-- -*- lua -*-


------------------------------------------------------------------------
-- libgtextutils 0.7
-- Tony Aburaad
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "intel-2017"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        libgtextutils")
whatis("Version:     0.7")
whatis("Category:    library")
whatis("Description: Gordon-Text_utils-Library")
whatis("URL:         https://github.com/agordon/libgtextutils")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use libgtextutils 0.7


Product Description
-------------------

Gordon-Text_utils-Library.

Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

https://github.com/agordon/libgtextutils

]])






-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))

-- -- Headers
prepend_path('CPATH', pathJoin(installDir,"include/gtextutils"))

