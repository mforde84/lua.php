-- -*- lua -*-


------------------------------------------------------------------------
-- AdmixTools 4.1
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
whatis("Name:        AdmixTools")
whatis("Version:     4.1")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/DReichLab/AdmixTools")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use AdmixTools 4.1


Product Description
-------------------
The ADMIXTOOLS package implements 5 methods described in 
Patterson et al. (2012) Ancient Admixture in Human History. Details 
of the methods and algorithm can be found in this paper.


Dependencies
------------
gcc/6.2.0
gsl/2.3
openblas/0.2.19
lapack/3.7.0


Documentation
-------------
Online documentation is available at:

https://github.com/DReichLab/AdmixTools

]])


-- PREREQUISITE
load("gsl/2.3")
load("openblas/0.2.19")
load("lapack/3.7.0")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
