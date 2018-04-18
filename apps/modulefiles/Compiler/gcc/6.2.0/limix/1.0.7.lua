-- -*- lua -*-


------------------------------------------------------------------------
-- LIMIX 1.0.7 
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
whatis("Name:        LIMIX")
whatis("Version:     1.0.7")
whatis("Category:    modeling")
whatis("Description: Linear mixed model library with interfaces to Python.")
whatis("URL:         https://github.com/limix/limix")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use LIMIX 1.0.7.


Product Description
-------------------
Limix is a flexible and efficient linear mixed model library with interfaces 
to Python.

Limix includes methods for

  * single-variant association and interaction testing,
  * variance decompostion analysis with linear mixed models,
  * association and interaction set tests,
  * as well as different utils for statistical analysis, basic I/O and plotting.



Dependencies
------------
gcc/6.2.0
python/2.7.13
libffi/3.2.1
bzip2/1.0.6
liknorm/1.2.6


Documentation
-------------
Online documentation is available at:

https://limix.readthedocs.io/

]])


-- Prerequisites
load("python/2.7.13")
load("libffi/3.2.1")
load("bzip2/1.0.6")
load("liknorm/1.2.6")
