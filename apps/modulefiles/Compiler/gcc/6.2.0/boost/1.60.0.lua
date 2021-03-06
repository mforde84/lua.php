-- -*- lua -*-


------------------------------------------------------------------------
-- boost 1.60.0
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
whatis("Name:        boost")
whatis("Version:     1.60.0")
whatis("Category:    C++, library")
whatis("Description: Free, peer-reviewed, portable C++ libraries")
whatis("URL:         http://www.boost.org")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use boost 1.60.0 


Product Description
-------------------
Boost is a set of libraries for the C++ programming language that 
provide support for tasks and structures such as linear algebra, 
pseudorandom number generation, multithreading, image processing, 
regular expressions, and unit testing. It contains over eighty 
individual libraries.

Most of the Boost libraries are licensed under the Boost Software 
License, designed to allow Boost to be used with both free and 
proprietary software projects. Many of Boost's founders are on 
the C++ standards committee, and several Boost libraries have 
been accepted for incorporation into both the C++ Technical 
Report 1 and the C++11 standard.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://www.boost.org/doc/libs/1_61_0

]])


-- BOOST_PATH
setenv('BOOST_ROOT', installDir)


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))
prepend_path('CPATH', pathJoin(installDir,"include/boost"))


