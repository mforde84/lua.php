-- -*- lua -*-


------------------------------------------------------------------------
-- odin 0.4.1
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
whatis("Name:        odin")
whatis("Version:     0.4.1")
whatis("Category:    ChIP-seq")
whatis("Description: Find differential peaks in pairs of ChIP-seq data.")
whatis("URL:         http://www.regulatory-genomics.org/odin-2/basic-introduction/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use odin 0.4.1.


Product Description
-------------------
ODIN is an HMM-based approach to detect and analyse differential peaks in pairs of 
ChIP-seq data. ODIN performs genomic signal processing, peak calling and p-value 
calculation in an integrated framework. ODIN is tailored for the comparison of two 
ChIP-seq signals without replicates. If you like to take replicates into account, 
please use THOR.


Dependencies
------------
intel/2017
python/2.7.13


Documentation
-------------
Online documentation is available at:

http://www.regulatory-genomics.org/odin-2/tool-usage/

]])

-- PREREQUISITE
unload("thor/0.1")
load("python/2.7.13")

-- PATH
prepend_path('PYTHONPATH', pathJoin(installDir,"lib/python2.7/site-packages"))
prepend_path('PATH', pathJoin(installDir,"bin"))
