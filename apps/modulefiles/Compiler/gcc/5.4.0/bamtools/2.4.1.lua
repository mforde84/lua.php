-- -*- lua -*-


------------------------------------------------------------------------
-- BamTools 2.4.1
-- Qiannan Miao 
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
whatis("Name:        BamTools")
whatis("Version:     2.4.1")
whatis("Category:    toolset")
whatis("Description: API and toolkit for handling BAM files.")
whatis("URL:         https://github.com/pezmaster31/bamtools")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use BamTools 2.4.1


Product Description
-------------------
BamTools is a project that provides both a C++ API and a command-line 
toolkit for reading, writing, and manipulating BAM (genome alignment) 
files.


Dependencies
------------
gcc/5.4.0


Documentation
-------------
Online documentation is available at:

https://github.com/pezmaster31/bamtools/wiki

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include/bamtools"))


-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib/bamtools"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib/bamtools"))


