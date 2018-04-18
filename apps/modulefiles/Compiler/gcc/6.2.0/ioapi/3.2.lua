-- -*- lua -*-


------------------------------------------------------------------------
-- ioapi 3.2
-- Tony Aburaad
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
whatis("Name:        ioapi")
whatis("Version:     3.2")
whatis("Category:    toolset")
whatis("Description: ")
whatis("URL:        ")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use ioapi 3.2


Product Description
-------------------


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:


]])


-- PATH
prepend_path('PATH', pathJoin(installDir,"Linux2_x86_64"))


