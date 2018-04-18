-- -*- lua -*-


------------------------------------------------------------------------
-- lzma 4.32.7
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
whatis("Name:        lzma")
whatis("Version:     4.32.7")
whatis("Category:    compression")
whatis("Description: Data compression software")
whatis("URL:         https://tukaani.org/lzma/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use lzma.


Product Description
-------------------
LZMA Utils are legacy data compression software with high compression ratio. LZMA Utils are no longer developed, 
although critical bugs may be fixed as long as fixing them doesn't require huge changes to the code.

Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://tukaani.org/lzma/

]])



-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))



