-- -*- lua -*-


------------------------------------------------------------------------
-- deblur 1.0.2
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
whatis("Name:        deblur")
whatis("Version:     1.0.2")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/biocore/deblur")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use deblur 1.0.2


Product Description
-------------------
Deblur is a greedy deconvolution algorithm for amplicon sequencing 
based on Illumina Miseq/Hiseq error profiles.


Dependencies
------------
gcc/6.2.0
python/3.5.3
vsearch/2.0.3
mafft/7.221
sortmerna/2.0


Documentation
-------------
Online documentation is available at:

https://github.com/biocore/deblur

]])

-- PREREQUISITE
load("python/3.5.3")
load("vsearch/2.0.3")
load("mafft/7.221")
load("sortmerna/2.0")

