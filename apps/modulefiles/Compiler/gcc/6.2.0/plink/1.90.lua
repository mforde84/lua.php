-- -*- lua -*-


------------------------------------------------------------------------
-- PLINK 1.90
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
whatis("Name:        PLINK")
whatis("Version:     1.90")
whatis("Category:    toolset")
whatis("Description: Whole genome association analysis toolset.")
whatis("URL:         http://pngu.mgh.harvard.edu/~purcell/plink/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use PLINK 1.90


Product Description
-------------------
PLINK is a free, open-source whole genome association analysis toolset, 
designed to perform a range of basic, large-scale analyses in a 
computationally efficient manner. The focus of PLINK is purely on 
analysis of genotype/phenotype data, so there is no support for steps 
prior to this (e.g. study design and planning, generating genotype or 
CNV calls from raw data).


Dependencies
------------
gcc/6.2.0
atlas/3.10.3
lapack/3.7.0


Documentation
-------------
Online documentation is available at:

http://pngu.mgh.harvard.edu/~purcell/plink/dist/plink-doc-1.07.pdf

]])


-- Prerequisites
load("atlas/3.10.3")
load("lapack/3.7.0")


-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))



