-- -*- lua -*-


------------------------------------------------------------------------
-- expect 5.45.4
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
whatis("Name:        expect")
whatis("Version:     5.45.4")
whatis("Category:    automation")
whatis("Description: bash automation")
whatis("URL:         http://expect.sourceforge.net/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use expect 5.45.4


Product Description
-------------------
Expect bash automation.


Dependencies
------------
gcc/6.2.0
tcl/8.7a1


Documentation
-------------
Online documentation is available at:

http://expect.sourceforge.net/

]])

load("tcl/8.7a1")

-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Path
prepend_path('PATH', pathJoin(installDir,"bin"))

