-- -*- lua -*-


------------------------------------------------------------------------
-- PrediXcan
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
whatis("Name:        PrediXcan")
whatis("Version:     0.9.1")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/hakyimlab/PrediXcan")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use PrediXcan 0.9.1


Product Description
-------------------
PrediXcan is a command-line tool that predicts gene expression from 
genotype data and performs gene-based association tests, allowing 
researchers to prioritize genes that are likely to be causal for a 
phenotype.


Dependencies
------------
gcc/6.2.0
R/3.4.1
python/2.7.13


Documentation
-------------
Online documentation is available at:

https://github.com/hakyimlab/PrediXcan/tree/master/Software

]])

-- PREREQUISITE
load("R/3.4.1")
load("python/2.7.13")


-- PATH
prepend_path('PATH', pathJoin(installDir))
