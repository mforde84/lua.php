-- -*- lua -*-


------------------------------------------------------------------------
-- shogun 6.0.0
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
whatis("Name:        shogun")
whatis("Version:     6.0.0")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://www.shogun-toolbox.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use shogun 6.0.0


Product Description
-------------------
The Shogun Machine learning toolbox offers a wide range of efficient 
and unified Machine Learning methods.


Dependencies
------------
gcc/6.2.0
pcre/8.39
python/2.7.13
swig/3.0.12


Documentation
-------------
Online documentation is available at:

http://www.shogun-toolbox.org/examples/latest/index.html

]])


-- Prerequisites
load("pcre/8.39")
load("python/2.7.13")
load("swig/3.0.12")

-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))

-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))
prepend_path('CPATH', pathJoin(installDir,"include/shogun"))

-- PYTHONPATH
prepend_path('PYTHONPATH', pathJoin(installDir,"lib/python2.7/site-packages/"))

-- Executables



