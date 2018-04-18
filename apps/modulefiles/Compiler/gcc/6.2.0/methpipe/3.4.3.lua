-- -*- lua -*-


------------------------------------------------------------------------
-- methpipe 3.4.3
-- Qiannan Miao
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
whatis("Name:        methpipe")
whatis("Version:     3.4.3")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://smithlabresearch.org/software/methpipe/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use methpipe 3.4.3


Product Description
-------------------
The MethPipe software package is a computational pipeline for analyzing 
bisulfite sequencing data (WGBS and RRBS).


Dependencies
------------
gcc/6.2.0
gsl/2.3


Documentation
-------------
Online documentation is available at:

http://smithlabresearch.org/downloads/methpipe-manual.pdf

]])

-- PREREQUISITE
load("gsl/2.3")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
