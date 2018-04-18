-- -*- lua -*-


------------------------------------------------------------------------
-- BEDOPS 2.4.26
-- Mike Jarsulic 
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
whatis("Name:        BEDOPS")
whatis("Version:     2.4.26")
whatis("Category:    toolkit")
whatis("Description: Toolkit for the management of genomic data.")
whatis("URL:         https://bedops.readthedocs.io/en/latest/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use bedtools 2.4.26


Product Description
-------------------
BEDOPS is an open-source command-line toolkit that performs highly 
efficient and scalable Boolean and other set operations, statistical 
calculations, archiving, conversion and other management of genomic 
data of arbitrary scale. Tasks can be easily split by chromosome for 
distributing whole-genome analyses across a computational cluster.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://bedops.readthedocs.io/en/latest/content/overview.html

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


