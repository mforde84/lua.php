-- -*- lua -*-


------------------------------------------------------------------------
-- Armadillo 7.800.2
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
whatis("Name:        Armadillo")
whatis("Version:     7.800.2")
whatis("Category:    math library")
whatis("Description: C++ linear algebra library.")
whatis("URL:         http://arma.sourceforge.net/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Armadillo 7.800.2


Product Description
-------------------
Armadillo is a high quality linear algebra library (matrix maths) for 
the C++ language, aiming towards a good balance between speed and ease 
of use. It provides high-level syntax (API) deliberately similar to Matlab.
Armadillo is useful for algorithm development directly in C++, or quick 
conversion of research code into production environments (e.g., software 
and hardware products). It can be used for machine learning, pattern 
recognition, computer vision, signal processing, bioinformatics, statistics, 
finance, etc. Various matrix decompositions are provided through integration 
with LAPACK, or one of its high performance drop-in replacements (e.g., 
multi-threaded Intel MKL, or OpenBLAS)
 

Dependencies
------------
gcc/6.2.0
openblas/0.2.19


Documentation
-------------
Online documentation is available at:

http://arma.sourceforge.net/docs.html

]])


-- Prerequisites
load("openblas/0.2.19")


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


