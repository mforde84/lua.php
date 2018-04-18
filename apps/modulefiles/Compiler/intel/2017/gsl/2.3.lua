-- -*- lua -*-


------------------------------------------------------------------------
-- GSL 2.3
-- Tony Aburaad
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
whatis("Name:        GSL")
whatis("Version:     2.3")
whatis("Category:    math library")
whatis("Description: The GNU Scientific Library (GSL) is a numerical library for C and C++ programmers.")
whatis("URL:         https://www.gnu.org/software/gsl/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use GSL 2.3.


Product Description
-------------------
The library provides a wide range of mathematical routines such as 
random number generators, special functions and least-squares fitting. 
There are over 1000 functions in total with an extensive test suite.


Dependencies
------------
intel/2017


Documentation
-------------
The following man pages are available:

gsl-config(1), gsl-histogram(1), gsl-randist(1), gsl(3)


Online documentation is available at:

https://www.gnu.org/software/gsl/manual/html_node/

]])



-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))

