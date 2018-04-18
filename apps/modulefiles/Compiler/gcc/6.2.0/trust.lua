-- -*- lua -*-


------------------------------------------------------------------------
-- TRUST
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
whatis("Name:        TRUST")
whatis("Version:     n/a")
whatis("Category:    alignment")
whatis("Description: Analysis of TCR sequences. ")
whatis("URL:         https://bitbucket.org/liulab/trust")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Trust.


Product Description
-------------------
TCR Receptor Utilities for Solid Tissue (TRUST) is a python standalone 
tool to analyze TCR sequences using unselected RNA sequencing data, 
profiled from solid tissues, including tumors. TRUST performs de novo 
assembly on the hypervariable complementarity-determining region 3 (CDR3) 
and reports contigs containing the CDR3 DNA and amino acid sequences. 
TRUST then realigns the contigs to IMGT reference gene sequences to report 
the corresponding variable (V) or joining (J) genes. 

Single-end (SE) mode is slower than PE mode, since secondary alignment is 
performed. TRUST currently works for hg19 genome build. For BAM files 
aligned to other genomes, please first liftover the .bed files in data/ 
directory to match genome build.


Dependencies
------------
gcc/6.2.0
python/2.7.13


Documentation
-------------
Online documentation is available at:

https://bitbucket.org/liulab/trust

]])


-- Prerequisites 
load("python/2.7.13")


-- Executables
prepend_path('PATH', installDir)


