-- -*- lua -*-


------------------------------------------------------------------------
-- libiconv 1.15.0
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
whatis("Name:        libiconv")
whatis("Version:     1.15.0")
whatis("Category:    library")
whatis("Description: libiconv library")
whatis("URL:         https://www.gnu.org/software/libiconv/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use libiconv library 1.15.0


Product Description
-------------------
This library provides an iconv() implementation, for use on systems 
which don't have one, or whose implementation cannot convert from/to 
Unicode. 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://www.gnu.org/software/libiconv/

]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Path
prepend_path('PATH', pathJoin(installDir,"bin"))
