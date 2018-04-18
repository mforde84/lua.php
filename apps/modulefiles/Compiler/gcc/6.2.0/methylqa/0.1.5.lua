-- -*- lua -*-


------------------------------------------------------------------------
-- methylQA 0.1.5
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
whatis("Name:        methqlQA")
whatis("Version:     0.1.5")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         methylation sequence data quality assessment tool")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use methylQA 0.1.5.


Product Description
-------------------
methylQA is aimed to be a methylation sequencing data quality assessment 
tool for MeDIP-seq and MRE-seq. It provides basic mapping status of the 
next generating sequencing data, like number of total reads, number of 
mapped reads etc., it also provide CpG status like how many CpG have been 
covered by one experiment, how many times one CpG have been covered etc. 
methylQA could also process general ChIP-seq data like Histone/TF 
ChIP-seq data, generate read density and mapping statistics.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8
R/3.3.2
TeX/2017


Documentation
-------------
Online documentation is available at:

http://methylqa.sourceforge.net/tutorial.php

]])

-- PREREQUISITE
load("zlib/1.2.8")
load("R/3.3.2")
load("TeX/2017")

-- PATH
prepend_path('PATH', pathJoin(installDir))
