-- -*- lua -*-


------------------------------------------------------------------------
-- gwas-pw 0.21
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
whatis("Name:        gwas-pw")
whatis("Version:     0.21")
whatis("Category:    GWAS")
whatis("Description: Pariwise analysis of GWAS.")
whatis("URL:         https://www.bioinformatics.babraham.ac.uk/projects/bismark/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use gwas-pw 0.21


Product Description
-------------------
gwas-pw is a tool for jointly analysing two genome-wide association 
studies (GWAS). The basic setup is that you have performed two GWAS 
and want to identify loci that influence both traits. Instead of using 
two P-value thresholds to identify variants that influence both traits, 
the algorithm learns reasonable thresholds from the data.


Dependencies
------------
gcc/6.2.0
boost/1.55.0
gsl/2.3


Documentation
-------------
Online documentation is available at:

https://rawgit.com/FelixKrueger/Bismark/master/Docs/Bismark_User_Guide.html

]])


-- Prerequisites
load("boost/1.55.0")
load("gsl/2.3")


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


