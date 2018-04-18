-- -*- lua -*-


------------------------------------------------------------------------
-- Eigen 3.3.2 
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "intel-2017"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        Eigen")
whatis("Version:     3.3.2")
whatis("Category:    math, library")
whatis("Description: C++ template library for linear algebra.")
whatis("URL:         http://eigen.tuxfamily.org/index.php?title=Main_Page")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Eigen 3.3.2


Product Description
-------------------
Eigen is a C++ template library for linear algebra: matrices, 
vectors, numerical solvers, and related algorithms.


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

http://eigen.tuxfamily.org/dox/


]])


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include/eigen3"))


