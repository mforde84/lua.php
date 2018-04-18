-- -*- lua -*-


------------------------------------------------------------------------
-- ncurses 6.0
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        ncurses")
whatis("Version:     6.0")
whatis("Category:    compression, library")
whatis("Description: Library for data compression")
whatis("URL:         http://www.zlib.net")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use zlib 1.2.8 


Product Description
-------------------
zlib is an abstraction of the DEFLATE compression algorithm used in
the gzip file compression program.


Dependencies
------------
gcc/4.9.4


Documentation
-------------
The following man pages are available:

zlib(3)


Online documentation is available at:

http://www.zlib.net/manual.html

]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))


-- Executabes
prepend_path('CPATH', pathJoin(installDir,"bin"))



