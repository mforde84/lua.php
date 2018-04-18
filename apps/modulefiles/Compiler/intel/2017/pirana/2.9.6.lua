-- -*- lua -*-


------------------------------------------------------------------------
-- pirana 2.9.6
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
whatis("Name:        pirana")
whatis("Version:     2.9.6")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://www.pirana-software.com/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use pirana 2.9.6


Product Description
-------------------


Dependencies
------------
intel/2017
nonmem/7.3
R/3.4.1

Documentation
-------------
Online documentation is available at:

http://www.iconplc.com/innovation/nonmem/

]])


-- PREREQUISITES
load("nonmem/7.3")
load("R/3.4.1")


-- PATH
prepend_path('PATH', pathJoin(installDir))
