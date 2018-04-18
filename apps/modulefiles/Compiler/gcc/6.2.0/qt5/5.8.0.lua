-- -*- lua -*-


------------------------------------------------------------------------
-- Qt5 5.8.0
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
whatis("Name:        Qt5")
whatis("Version:     5.8.0")
whatis("Category:    library")
whatis("Description: Cross-platform user interface development.")
whatis("URL:         https://www.qt.io/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Qt5 5.8.0.


Product Description
-------------------
Qt is a cross-platform application framework that is used for developing 
application software that can be run on various software and hardware 
platforms with little or no change in the underlying codebase, while still 
being a native application with native capabilities and speed.


Dependencies
------------
gcc/6.2.0
perl/5.24.0
python/2.7.13


Documentation
-------------
Online documentation is available at:

http://doc.qt.io/

]])


-- Prerequisites
load("perl/5.24.0")
load("python/2.7.13")


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))

