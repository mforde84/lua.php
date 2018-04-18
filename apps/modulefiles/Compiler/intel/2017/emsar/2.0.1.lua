-- -*- lua -*-


------------------------------------------------------------------------
-- emsar 2.0.1
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
whatis("Name:        emsar")
whatis("Version:     2.0.1")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/parklab/emsar/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use emsar 2.0.1


Product Description
-------------------
EMSAR is a method for quantifying transcripts from RNA-seq data with 
high accuracy and low computational cost. EMSAR is available at 
https://github.com/parklab/emsar


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

https://github.com/parklab/emsar

]])

-- PREREQUISITE

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
