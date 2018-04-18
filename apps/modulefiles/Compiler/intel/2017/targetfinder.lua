-- -*- lua -*-


------------------------------------------------------------------------
-- TargetFinder
-- Mike Jarsulic
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
whatis("Name:        TargetFinder")
whatis("Version:     n/a")
whatis("Category:    gene-targets")
whatis("Description: Pipeline for identifying and characterizing the gene targets of distal enhancers.")
whatis("URL:         https://github.com/shwhalen/targetfinder")


--Help Message
help(
[[


Purpose
-------
This module file defines the system paths and environment variables
needed to use TargetFinder


Product Description
-------------------
TargetFinder is a pipeline for identifying and characterizing the 
gene targets of distal enhancers.


Dependencies
------------
intel/2017
python/3.5.3 
bedtools/2.25.0


Documentation
-------------
Online documentation is available at:

https://github.com/shwhalen/targetfinder

]])


-- Prerequisites
load("python/3.5.3")
load("bedtools/2.25.0")


-- PATH
prepend_path('PATH', installDir)


