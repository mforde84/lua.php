-- -*- lua -*-


------------------------------------------------------------------------
-- primer3 2.3.7
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
whatis("Name:        primer3")
whatis("Version:     2.3.7")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://primer3.sourceforge.net/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use primer3 2.3.7


Product Description
-------------------
Primer3 is a widely used program for designing PCR primers (PCR = 
"Polymerase Chain Reaction"). PCR is an essential and ubiquitous 
tool in genetics and molecular biology. Primer3 can also design 
hybridization probes and sequencing primers.

PCR is used for many different goals. Consequently, primer3 has many 
different input parameters that you control and that tell primer3 
exactly what characteristics make good primers for your goals.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://primer3.sourceforge.net/primer3_manual.htm

]])

-- PREREQUISITE

-- PATH
prepend_path('PATH', pathJoin(installDir,"src"))
