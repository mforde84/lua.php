-- -*- lua -*-


------------------------------------------------------------------------
-- IMPUTE2 2.3.2
-- Tony Aburaad
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
whatis("Name:        IMPUTE2")
whatis("Version:     2.3.2")
whatis("Category:    imputation")
whatis("Description: A genotype imputation and haplotype phasing program")
whatis("URL:         https://mathgen.stats.ox.ac.uk/impute/impute_v2.html#home")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use IMPUTE2 2.3.2


Product Description
-------------------
IMPUTE2 is a computer program for phasing observed genotypes and 
imputing missing genotypes.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://mathgen.stats.ox.ac.uk/impute/impute_v2.html#home

]])


-- PATH
prepend_path('PATH', installDir)


