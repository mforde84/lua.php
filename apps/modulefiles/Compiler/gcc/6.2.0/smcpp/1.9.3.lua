-- -*- lua -*-


------------------------------------------------------------------------
-- smcpp 1.9.3
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
whatis("Name:        smcpp")
whatis("Version:     1.9.3")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/popgenmethods/smcpp/releases/tag/v1.9.3")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use fastqtl smcpp 1.9.3


Product Description
-------------------
SMC++ is a program for estimating the size history of populations from whole genome 
sequence data.


Dependencies
------------
gcc/6.2.0
gsl/2.3
python/3.5.3

Documentation
-------------
Online documentation is available at:

https://github.com/popgenmethods/smcpp/tree/v1.9.3

]])

-- PREREQUISITE
load("gsl/2.3")
load("python/3.5.3")

-- PATH
