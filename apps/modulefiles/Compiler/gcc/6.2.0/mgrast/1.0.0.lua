-- -*- lua -*-


------------------------------------------------------------------------
-- mgrast 1.0.0 
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
whatis("Name:        mgrast")
whatis("Version:     1.0.0")
whatis("Category:    microbiome")
whatis("Description: microbiome server analysis api")
whatis("URL:         https://github.com/MG-RAST/MG-RAST-Tools")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use mgrast 1.0.0.


Product Description
-------------------
Repository of script tools, examples, and contributed code for using the MG-RAST API
Repository of scripts and libraries for using the MG-RAST API and MG-RAST data


Dependencies
------------
gcc/6.2.0
python/2.7.13
perl/5.24.0


Documentation
-------------
Online documentation is available at:

https://github.com/MG-RAST/MG-RAST-Tools


Usage
-------------
This package loads a environmental variable MGRAST_PATH:
$ echo $MGRAST_PATH 


]])


load("python/2.7.13")
load("perl/5.24.0")


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"mglib"))
prepend_path('PERL5LIB', pathJoin(installDir,"mglib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"scripts"))
prepend_path('PATH', pathJoin(installDir,"mglib"))

-- MGRAST_PATH
setenv("MGRAST_PATH",installDir)

