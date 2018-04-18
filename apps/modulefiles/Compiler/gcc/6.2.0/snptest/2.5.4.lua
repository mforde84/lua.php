-- -*- lua -*-


------------------------------------------------------------------------
-- SNPTEST 2.5.4
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
whatis("Name:        SNPTEST")
whatis("Version:     2.5.4")
whatis("Category:    toolset")
whatis("Description: SNPTEST is a program for the analysis of single SNP association in genome-wide studies.")
whatis("URL:         https://mathgen.stats.ox.ac.uk/genetics_software/snptest/snptest.html#introduction")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use SNPTEST 2.5.4


Product Description
-------------------
SNPTEST is a program for the analysis of single SNP association in genome-wide 
studies. The tests implemented include:

-Binary (case-control) phenotypes, single and multiple quantitative phenotypes
-Bayesian and Frequentist tests
-Ability to condition upon an arbitrary set of covariates and/or SNPs.
-Various different methods for the dealing with imputed SNPs.

The program is designed to work seamlessly with the output of our genotype 
imputation software IMPUTE and the programs QCTOOL and GTOOL.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://mathgen.stats.ox.ac.uk/genetics_software/snptest/snptest.html#introduction

]])


-- PATH
prepend_path('PATH', installDir)


