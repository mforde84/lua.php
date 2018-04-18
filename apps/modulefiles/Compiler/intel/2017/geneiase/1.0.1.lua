-- -*- lua -*-


------------------------------------------------------------------------
-- geneiase 1.0.1
-- Qiannan Miao
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "intel-2017"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        geneiase")
whatis("Version:     1.0.1")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/edsgard/geneiase")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use geneiase 1.0.1


Product Description
-------------------
GeneiASE is a software for detection of condition-dependent allele 
specific expression in single individuals. GeneiASE does not require 
haplotype phasing and performs consistently over a range of read 
depths and ASE effect sizes.


Dependencies
------------
intel/2017
R/3.4.1


Documentation
-------------
Online documentation is available at:

https://github.com/edsgard/geneiase

]])

-- PREREQUISITE
load("R/3.4.1")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
