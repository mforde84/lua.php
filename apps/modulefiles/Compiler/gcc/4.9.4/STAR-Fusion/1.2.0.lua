-- -*- lua -*-


------------------------------------------------------------------------
-- STAR-Fusion 1.2.0
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        STAR-Fusion")
whatis("Version:     1.2.0")
whatis("Category:    alignment")
whatis("Description: Identify candidate fusion transcripts.")
whatis("URL:         https://github.com/STAR-Fusion/STAR-Fusion")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use STAR-Fusion 1.2.0


Product Description
-------------------
STAR-Fusion is a component of the Trinity Cancer Transcriptome 
Analysis Toolkit (CTAT). STAR-Fusion uses the STAR aligner to 
identify candidate fusion transcripts supported by Illumina reads. 
STAR-Fusion further processes the output generated by the STAR 
aligner to map junction reads and spanning reads to a reference 
annotation set.


Dependencies
------------
gcc/4.9.4
perl/5.18.4
STAR/2.5.3a


Documentation
-------------
Online documentation is available at:

https://github.com/STAR-Fusion/STAR-Fusion/wiki

]])


-- Prerequisites
load("perl/5.18.4")
load("STAR/2.5.3a")


-- Libraries 
prepend_path('PERL5LIB', pathJoin(installDir,"PerlLib"))

-- Executables
prepend_path('PATH', installDir)


