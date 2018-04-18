-- -*- lua -*-


------------------------------------------------------------------------
-- CONCOCT 0.4.0
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
whatis("Name:        CONCOCT")
whatis("Version:     0.4.0")
whatis("Category:    metagenomics")
whatis("Description: Unsupervised binning of metagenomic contigs.")
whatis("URL:         https://github.com/BinPro/CONCOCT")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use CONCOCT 0.4.0


Product Description
-------------------
A program for unsupervised binning of metagenomic contigs by using 
nucleotide composition, coverage data in multiple samples and 
linkage data from paired end reads.


Dependencies
------------
gcc/6.2.0
python/2.7.13
zlib/1.2.8
bzip2/1.0.6
gsl/2.3


Documentation
-------------
Online documentation is available at:

https://concoct.readthedocs.io/en/latest/

]])


-- Prerequisites
load("python/2.7.13")
load("zlib/1.2.8")
load("bzip2/1.0.6")
load("gsl/2.3")


