-- -*- lua -*-


------------------------------------------------------------------------
-- angsd 0.918
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
whatis("Name:        angsd")
whatis("Version:     0.918")
whatis("Category:    sequencing")
whatis("Description: ANGSD is a software for analyzing next generation sequencing data.")
whatis("URL:         http://www.popgen.dk/angsd/index.php/ANGSD#Overview")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use angsd 0.918


Product Description
-------------------
ANGSD is a software for analyzing next generation sequencing data. The software can handle a number 
of different input types from mapped reads to imputed genotype probabilities. Most methods take genotype 
uncertainty into account instead of basing the analysis on called genotypes. This is especially useful 
for low and medium depth data. The software is written in C++ and has been used on large sample sizes.

Dependencies
------------
gcc/6.2.0
zlib/1.2.8
bzip2/1.0.6
xz/5.2.2

Documentation
-------------
Online documentation is available at:

http://www.popgen.dk/angsd/index.php/ANGSD#Overview

]])


-- PREREQUISITE
load("zlib/1.2.8")
load("bzip2/1.0.6")
load("xz/5.2.2")
load("python/2.7.13")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"misc"))


