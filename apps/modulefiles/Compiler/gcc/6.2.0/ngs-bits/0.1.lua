-- -*- lua -*-


------------------------------------------------------------------------
-- ngs-bits 0.1
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
whatis("Name:        ngs-bits")
whatis("Version:     0.1")
whatis("Category:    toolkit")
whatis("Description: Short-read sequencing tools.")
whatis("URL:         https://github.com/imgag/ngs-bits")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use ngs-bits 0.1.


Product Description
-------------------
ngs-bits contains a collection of tools that are used for NGS short-read 
data analysis. Not all of these tools are mature enough for public use. 
Thus, see the online documentation for tools that can be safely used.


Dependencies
------------
gcc/6.2.0
qt5/5.8.0


Documentation
-------------
Online documentation is available at:

https://github.com/imgag/ngs-bits/blob/master/README.md

]])


-- Prerequisites
load("qt5/5.8.0")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
