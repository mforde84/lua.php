-- -*- lua -*-


------------------------------------------------------------------------
-- CAVIAR 1.0
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
whatis("Name:        CAVIAR")
whatis("Version:     1.0")
whatis("Category:    variants")
whatis("Description: Quantifies the probability of each variant to be causal while allowing with arbitrary number of causal variants.")
whatis("URL:         https://github.com/fhormoz/caviar")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use CAVIAR 1.0


Product Description
-------------------
A statistical framework that quantifies the probability of each 
variant to be causal while allowing with arbitrary number of causal 
variants.


Dependencies
------------
gcc/6.2.0
gsl/2.3
lapack/3.7.0


Documentation
-------------
No online documentation 

]])


-- Prerequisites
load("gsl/2.3")
load("lapack/3.7.0")


-- Executables
prepend_path('PATH', installDir)


