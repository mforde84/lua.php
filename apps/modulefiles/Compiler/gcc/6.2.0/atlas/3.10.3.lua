-- -*- lua -*-


------------------------------------------------------------------------
-- ATLAS 3.10.3
-- Mike Jarsulic 
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
whatis("Name:        ATLAS")
whatis("Version:     3.10.3")
whatis("Category:    math, library")
whatis("Description: Optimal BLAS implementation for cache-based architectures.")
whatis("URL:         http://math-atlas.sourceforge.net/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use ATLAS 3.10.3


Product Description
-------------------
ATLAS stands for Automatically Tuned Linear Algebra Software. ATLAS 
is both a research project and a software package. ATLAS's purpose is 
to provide portably optimal linear algebra software. The current 
version provides a complete BLAS API (for both C and Fortran77), and 
a very small subset of the LAPACK API. For all supported operations, 
ATLAS achieves performance on par with machine-specific tuned libraries.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://math-atlas.sourceforge.net/faq.html#doc

]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


