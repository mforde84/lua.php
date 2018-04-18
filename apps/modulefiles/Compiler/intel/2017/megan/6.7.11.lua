-- -*- lua -*-


------------------------------------------------------------------------
-- MEGAN 6.7.11
-- Tony Aburaad 
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
whatis("Name:        MEGAN")
whatis("Version:     6.7.11")
whatis("Category:    analysis")
whatis("Description: Allows optimized analysis of large metagenomic datasets.")
whatis("URL:         https://swes.cals.arizona.edu/maier_lab/kartchner/documentation/index.php/home/docs/megan")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use megan 6.7.11.


Product Description
-------------------
MEGAN ('MEtaGenome ANalyzer') is a computer program that allows 
optimized analysis of large metagenomic datasets.


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

https://swes.cals.arizona.edu/maier_lab/kartchner/documentation/index.php/home/docs/megan#doc-tab

]])


-- Executables
prepend_path('PATH', installDir)

