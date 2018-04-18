-- -*- lua -*-


------------------------------------------------------------------------
-- curl 7.51.0
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-5.4.0"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        curl")
whatis("Version:     7.51.0")
whatis("Category:    data transfer, library")
whatis("Description: Library/tool for transferring data")
whatis("URL:         https://curl.haxx.se")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use curl 8.39


Product Description
-------------------
curl is a tool to transfer data from or to a server, using one of a 
variety of supported protocols. The command is designed to work 
without user interaction. 


Dependencies
------------
gcc/5.4.0


Documentation
-------------
Online documentation is available at:

https://curl.haxx.se/docs/

]])


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))


