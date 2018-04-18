-- -*- lua -*-


------------------------------------------------------------------------
-- BayPass 2.1.0
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
whatis("Name:        BayPass")
whatis("Version:     2.1.0")
whatis("Category:    population")
whatis("Description: Population genomics software which is aimed at identifying genetic markers subjected to selection and associated to population-specific covariates")
whatis("URL:         http://www1.montpellier.inra.fr/CBGP/software/baypass/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use BayPass 2.1.0


Product Description
-------------------
The package BayPass is a population genomics software which is primarily 
aimed at identifying genetic markers subjected to selection and/or 
associated to population-specific covariates (e.g., environmental 
variables, quantitative or categorical phenotypic characteristics). The 
underlying models explicitly account for (and may estimate) the 
covariance structure among the population allele frequencies that 
originates from the shared history of the populations under study.


Dependencies
------------
gcc/6.2.0
R/3.3.2

Documentation
-------------
Online documentation is available at:

http://www1.montpellier.inra.fr/CBGP/software/baypass/files/BayPass_manual_2.1.pdf

]])


-- Prerequisites
load("R/3.3.2")


-- Executables
prepend_path('PATH', installDir)
prepend_path('PATH', pathJoin(installDir,'utils'))




