-- -*- lua -*-


------------------------------------------------------------------------
-- subread 1.5.3
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
whatis("Name:        subread")
whatis("Version:     1.5.3")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://subread.sourceforge.net/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use subread 1.5.3


Product Description
-------------------
The Subread software package is a tool kit for processing next-gen sequencing data. 
It includes Subread aligner, Subjunc exon-exon junction detector and featureCounts 
read summarization program.

Subread aligner can be used to align both gDNA-seq and RNA-seq reads. Subjunc aligner 
was specified designed for the detection of exon-exon junction. For the mapping of 
RNA-seq reads, Subread performs local alignments and Subjunc performs global 
alignments.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8


Documentation
-------------
Online documentation is available at:

http://bioinf.wehi.edu.au/subread-package/SubreadUsersGuide.pdf

]])

-- PREREQUISITE
load("zlib/1.2.8")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"bin/utilities"))
