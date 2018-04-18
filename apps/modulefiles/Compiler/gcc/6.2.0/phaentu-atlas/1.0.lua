-- -*- lua -*-


------------------------------------------------------------------------
-- Phaentu Atlas 1.0
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
whatis("Name:        Phaentu Atlas")
whatis("Version:     1.0")
whatis("Category:    toolkit")
whatis("Description: Analysis tools for low-coverage and ancient samples.")
whatis("URL:         https://bitbucket.org/phaentu/atlas/wiki/Home")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Phaentu Atlas 1.0


Product Description
-------------------
ATLAS stands for Analysis Tools for Low-coverage and Ancient Samples. 
These tools cover all programs necessary to obtain variant calls, 
estimates of heterozygosity and more from a BAM file. There are 
sequence data processing tools, diagnostic tools, and variant 
discovery tools, similar to GATK by the Broad Institute.


Dependencies
------------
gcc/6.2.0
armadillo/7.800.2


Documentation
-------------
Online documentation is available at:

https://bitbucket.org/phaentu/atlas/wiki/Home

]])


load("armadillo/7.800.2")


-- Executables
prepend_path('PATH', installDir)

