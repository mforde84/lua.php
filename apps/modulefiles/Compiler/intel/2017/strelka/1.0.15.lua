-- -*- lua -*-


------------------------------------------------------------------------
-- strelka 1.0.15
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
whatis("Name:        strelka")
whatis("Version:     1.0.15")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://sites.google.com/site/strelkasomaticvariantcaller/home")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use strelka 1.0.15.


Product Description
-------------------
Strelka is an analysis package designed to detect somatic SNVs and small 
indels from the aligned sequencing reads of matched tumor-normal samples.


Dependencies
------------
intel/2016
zlib/1.2.8
perl/5.24.0


Documentation
-------------
Online documentation is available at:

https://sites.google.com/site/strelkasomaticvariantcaller/home

]])

-- PREREQUISITE
load("zlib/1.2.8")
load("perl/5.24.0")

-- PATH
prepend_path('PATH', pathJoin(installDir, "bin"))
