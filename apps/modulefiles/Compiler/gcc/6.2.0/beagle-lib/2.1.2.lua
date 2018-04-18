-- -*- lua -*-


------------------------------------------------------------------------
-- beagle-lib 2.1.2
-- Qiannan Miao 
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
whatis("Name:        beagle-lib")
whatis("Version:     2.1.2")
whatis("Category:    ")
whatis("Description: ")
whatis("URL:         https://github.com/beagle-dev/beagle-lib")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use beagle-lib 2.1.2


Product Description
-------------------
BEAGLE is a high-performance library that can perform the core calculations 
at the heart of most Bayesian and Maximum Likelihood phylogenetics packages. 
It can make use of highly-parallel processors such as those in graphics 
cards (GPUs) found in many PCs.


Dependencies
------------
gcc/6.2.0
java-jdk/1.8.0_92


Documentation
-------------
Online documentation is available at:

https://github.com/beagle-dev/beagle-lib

]])


-- Prerequisites
load("java-jdk/1.8.0_92")


-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))
prepend_path('CPATH', pathJoin(installDir,"include/libhmsbeagle-1"))
prepend_path('CPATH', pathJoin(installDir,"include/libhmsbeagle-1/libhmsbeagle"))

prepend_path('PKG_CONFIG_PATH', pathJoin(installDir,"lib/pkgconfig/"))

