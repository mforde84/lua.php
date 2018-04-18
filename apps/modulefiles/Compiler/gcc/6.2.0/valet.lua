-- -*- lua -*-


------------------------------------------------------------------------
-- VALET
-- Tony Aburaad 
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
whatis("Name:        VALET")
whatis("Version:     n/a")
whatis("Category:    analysis")
whatis("Description: Pipeline for evaulating metagenomic assemblies.")
whatis("URL:         https://github.com/marbl/VALET")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use VALET


Product Description
-------------------
Pipeline for evaulating metagenomic assemblies.

Use
---
Run MEGAN

Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

http://mummer.sourceforge.net/
]])


load('python')
load('perl')
load('R')
load('reapr')


-- Executables
prepend_path('PATH', pathJoin(installDir,'src/py'))

