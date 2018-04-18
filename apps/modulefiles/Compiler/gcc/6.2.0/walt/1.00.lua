-- -*- lua -*-


------------------------------------------------------------------------
-- WALT 1.00
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
whatis("Name:        WALT")
whatis("Version:     1.00")
whatis("Category:    alignment")
whatis("Description: Read mapping program for bisulfite sequencing in DNA methylation studies.")
whatis("URL:         https://github.com/smithlabcode/walt")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use WALT 1.00.


Product Description
-------------------
WALT (Wildcard ALignment Tool) is a read mapping program for bisulfite 
sequencing in DNA methylation studies.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://github.com/smithlabcode/walt/blob/master/README.md

]])


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
