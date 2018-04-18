-- -*- lua -*-


------------------------------------------------------------------------
-- liknorm 1.2.6 
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
whatis("Name:        liknorm")
whatis("Version:     1.2.6")
whatis("Category:    library")
whatis("Description: Moments of the product of an exponential-family likelihood with a Normal distribution.")
whatis("URL:         https://github.com/limix/liknorm")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use liknorm 1.2.6.


Product Description
-------------------
C library for computing moments of the product of an exponential-family 
likelihood with a Normal distribution.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online Documentation:

http://liknorm.readthedocs.io/

]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))



