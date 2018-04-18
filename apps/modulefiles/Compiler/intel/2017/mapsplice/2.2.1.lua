-- -*- lua -*-


------------------------------------------------------------------------
-- MapSplice v2.2.1
-- Martin Forde
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
whatis("Name:        MapSplice")
whatis("Version:     2.2.1")
whatis("Category:    compression, library")
whatis("Description: MapSplice is a software for mapping RNA-seq data to reference genome for splice junction discovery that depends only on reference genome, and not on any further annotations.")
whatis("URL:         http://www.netlab.uky.edu/p/bioinfo/MapSplice2")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use MapSplice 2.2.1 


Product Description
-------------------
MapSplice is a software for mapping RNA-seq data to reference genome for 
splice junction discovery that depends only on reference genome, and not 
on any further annotations.


Dependencies
------------
intel/2017
python/2.7.13


Documentation
-------------
Online documentation is available at:

http://www.netlab.uky.edu/p/bioinfo/MapSplice2UserGuide

]])


-- PREREQUISITE
load("python/2.7.13")


-- PATH
prepend_path('PATH', pathJoin(installDir))

