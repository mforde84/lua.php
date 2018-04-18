-- -*- lua -*-


------------------------------------------------------------------------
-- tcl 8.7a1
-- Martin Forde
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
whatis("Name:        tcl")
whatis("Version:     8.7a1")
whatis("Category:    tcl/tk library")
whatis("Description: tcl/tk library")
whatis("URL:         tcl/tk library")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use tcl/tk library 8.7a1


Product Description
-------------------
tcl/tk library for expect.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://www.tcl.tk/

]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Path
prepend_path('PATH', pathJoin(installDir,"bin"))

