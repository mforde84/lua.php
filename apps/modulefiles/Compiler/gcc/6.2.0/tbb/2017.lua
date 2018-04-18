-- -*- lua -*-


------------------------------------------------------------------------
-- tbb 2017
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
whatis("Name:        tbb")
whatis("Version:     2017")
whatis("Category:    library")
whatis("Description: Library that supports scalable parallel programming using standard ISO C++ code.")
whatis("URL:         https://www.threadingbuildingblocks.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use tbb 2017


Product Description
-------------------
Threading Building Blocks (Intel® TBB  is a software C++ template 
library that simplifies the development of software applications 
running in parallel. TBB extends C++ for parallelism in an easy to use 
and efficient manner. It is designed to work with any C++ compiler thus 
simplifying development of applications for multi-core systems.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

www.threadingbuildingblocks.org/documentation

]])


-- TBBROOT
setenv('TBBROOT', installDir)

-- CPATH
prepend_path('CPATH', pathJoin(installDir,"include"))

-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


