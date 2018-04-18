-- -*- lua -*-


------------------------------------------------------------------------
-- cleanCall
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
whatis("Name:        cleanCall")
whatis("Version:     n/a")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/hyunminkang/cleancall")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use cleanCall


Product Description
-------------------
cleanCall is a software package for detecting, estimating, correcting 
for contamination in DNA sequence data. It contains one C++ program, 
cleanCall, as a core binary file that runs statistical algorithms. It 
contains three wrapper scripts, cctools-pileup for producing pileups 
from sequence data, cctools-verify for detecting and estimating 
contamination, and cctools-genotype for correcting for contaminations. 
These wrapper scripts allows to run cleanCall across a large number 
of sequenced genomes or exomes in a highly parallel manner.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8

Documentation
-------------
Online documentation is available at:

https://github.com/hyunminkang/cleancall

]])


-- Prerequisites
load("zlib/1.2.8")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))


