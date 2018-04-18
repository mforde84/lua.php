-- -*- lua -*-


------------------------------------------------------------------------
-- bsmap 2.90
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
whatis("Name:        bsmap")
whatis("Version:     2.90")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://code.google.com/archive/p/bsmap/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use bsmap 2.90


Product Description
-------------------
BSMAP is a short reads mapping software for bisulfite sequencing reads. 
Bisulfite treatment converts unmethylated Cytosines into Uracils 
(sequenced as Thymine) and leave methylated Cytosines unchanged, 
hence provides a way to study DNA cytosine methylation at single 
nucleotide resolution. BSMAP aligns the Ts in the reads to both Cs and 
Ts in the reference.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://code.google.com/archive/p/bsmap/

]])

-- PREREQUISITE
load("python/2.7.13")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
