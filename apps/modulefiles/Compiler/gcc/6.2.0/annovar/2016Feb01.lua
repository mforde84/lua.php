-- -*- lua -*-


------------------------------------------------------------------------
-- Annovar
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
whatis("Name:        Annovar")
whatis("Version:     2016Feb01")
whatis("Category:    annotation")
whatis("Description: ANNOVAR utilizes update-to-date information to annotate genetic variants detected from diverse genomes.")
whatis("URL:         http://annovar.openbioinformatics.org/en/latest/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Annovar


Product Description
-------------------
ANNOVAR is an efficient software tool to utilize update-to-date 
information to functionally annotate genetic variants detected from 
diverse genomes (including human genome hg18, hg19, hg38, as well 
as mouse, worm, fly, yeast and many others). 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://annovar.openbioinformatics.org/en/latest/

]])


--MODULES
load("perl/5.24.0")


-- PATH
prepend_path('PATH', installDir)


