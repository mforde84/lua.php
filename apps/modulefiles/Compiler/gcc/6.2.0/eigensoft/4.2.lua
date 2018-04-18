-- -*- lua -*-


------------------------------------------------------------------------
-- EIGENSOFT 4.2
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
whatis("Name:        EIGENSOFT")
whatis("Version:     4.2")
whatis("Category:    stratification")
whatis("Description: Population genetics and stratification correction methods.")
whatis("URL:         https://www.hsph.harvard.edu/alkes-price/software/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use EIGENSOFT 4.2.


Product Description
-------------------
The EIGENSOFT package combines functionality from population genetics 
methods and the EIGENSTRAT stratification correction method. The 
EIGENSTRAT method uses principal components analysis to explicitly 
model ancestry differences between cases and controls along continuous 
axes of variation; the resulting correction is specific to a candidate 
marker's variation in frequency across ancestral populations, 
minimizing spurious associations while maximizing power to detect true 
associations. The EIGENSOFT package has a built-in plotting script and 
supports multiple file formats and quantitative phenotypes.


Dependencies
------------
gcc/6.2.0
lapack/3.7.0
perl/5.24.0


Documentation
-------------
Online documentation is available at:

https://www.hsph.harvard.edu/alkes-price/eigensoft-frequently-asked-questions/

]])


-- Prerequisites
load("lapack/3.7.0")
load("perl/5.24.0")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
