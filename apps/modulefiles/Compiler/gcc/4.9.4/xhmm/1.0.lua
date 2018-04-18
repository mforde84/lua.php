-- -*- lua -*-


------------------------------------------------------------------------
-- XHMM 1.0
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
whatis("Name:        XHMM")
whatis("Version:     1.0")
whatis("Category:    variants")
whatis("Description: Call copy number variation when exome capture was used")
whatis("URL:         http://atgu.mgh.harvard.edu/xhmm/index.shtml")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use XHMM 1.0


Product Description
-------------------
The XHMM C++ software suite was written to call copy number 
variation (CNV) from next-generation sequencing projects, where 
exome capture was used (or targeted sequencing, more generally).

XHMM uses principal component analysis (PCA) normalization and a 
hidden Markov model (HMM) to detect and genotype copy number 
variation (CNV) from normalized read-depth data from targeted 
sequencing experiments.

XHMM was explicitly designed to be used with targeted exome 
sequencing at high coverage (at least 60x - 100x) using Illumina 
HiSeq (or similar) sequencing of at least ~50 samples. However, 
no part of XHMM explicitly requires these particular experimental 
conditions, just high coverage of genomic regions for many samples. 


Dependencies
------------
gcc/4.9.4
lapack/3.7.0


Documentation
-------------
Online documentation is available at:

http://atgu.mgh.harvard.edu/xhmm/tutorial.shtml

]])


-- Prereuqisites
load("lapack/3.7.0")


-- Executables
prepend_path('PATH', pathJoin(installDir,"execs"))


-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"libs"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"libs"))


