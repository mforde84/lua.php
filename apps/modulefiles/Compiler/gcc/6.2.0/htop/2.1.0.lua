-- -*- lua -*-


------------------------------------------------------------------------
-- htop v2.1.0
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
whatis("Name:        htop")
whatis("Version:     2.1.0")
whatis("Category:    resources")
whatis("Description: Visually expanded task manager")
whatis("URL:         https://github.com/hishamhm/htop")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use htop 2.1.0.


Product Description
-------------------
htop is basically top task manager but with some visual improvements.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://github.com/hishamhm/htop

]])


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
