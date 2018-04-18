-- -*- lua -*-


------------------------------------------------------------------------
-- SAMStat 1.5.1
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
whatis("Name:        SAMStat")
whatis("Version:     1.5.1")
whatis("Category:    toolset")
whatis("Description: SAMStat is an efficient C program to quickly display statistics of large sequence files from next generation sequencing projects.")
whatis("URL:         http://samstat.sourceforge.net/#introduction")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use SAMStat.


Product Description
-------------------
SAMStat is an efficient C program to quickly display statistics of large sequence files from next generation sequencing projects. 
When applied to SAM/BAM files all statistics are reported for unmapped, poorly and accurately mapped reads separately. This allows 
for identification of a variety of problems, such as remaining linker and adaptor sequences, causing poor mapping. Apart from this 
SAMStat can be used to verify individual processing steps in large analysis pipelines.

Dependencies
------------
gcc/6.2.0
samtools/1.3.1

Documentation
-------------
Online documentation is available at:

http://samstat.sourceforge.net/#introduction

]])


-- PREREQUISITE
load("samtools/1.3.1")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
