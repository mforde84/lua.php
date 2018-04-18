-- -*- lua -*-


------------------------------------------------------------------------
-- thor 0.1
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
whatis("Name:        thor")
whatis("Version:     0.1")
whatis("Category:    ChIP-seq")
whatis("Description: Find differential peaks in two sets of ChIP-seq data.")
whatis("URL:         http://www.regulatory-genomics.org/thor-2/basic-intrstruction/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use thor 0.1.


Product Description
-------------------
THOR is an HMM-based approach to detect and analyze differential peaks in two sets of 
ChIP-seq data from distinct biological conditions with replicates. THOR performs genomic 
signal processing, peak calling and p-value calculation in an integrated framework.


Dependencies
------------
intel/2017
python/2.7.13


Documentation
-------------
Online documentation is available at:

http://www.regulatory-genomics.org/thor-2/tool-usage/

]])

-- PREREQUISITE
unload("odin/0.4.1")
load("python/2.7.13")

-- PATH
prepend_path('PYTHONPATH', pathJoin(installDir,"lib/python2.7/site-packages"))
prepend_path('PATH', pathJoin(installDir,"bin"))
