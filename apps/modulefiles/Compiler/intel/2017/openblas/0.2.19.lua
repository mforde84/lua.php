-- -*- lua -*-


------------------------------------------------------------------------
-- OpenBLAS 0.2.19
-- Mike Jarsulic 
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
whatis("Name:        OpenBLAS")
whatis("Version:     0.2.19")
whatis("Category:    math, library")
whatis("Description: Optimized linear algebra library")
whatis("URL:         http://www.openblas.net")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use OpenBLAS 0.2.19


Product Description
-------------------
OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version.


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

https://github.com/xianyi/OpenBLAS/wiki/User-Manual

]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


