-- -*- lua -*-


------------------------------------------------------------------------
-- gmap 2017-09-11
-- Qiannan Miao
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "intel-2017"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        gmap")
whatis("Version:     2017-09-11")
whatis("Category:    alignment")
whatis("Description: Genomic Mapping and Alignment Program for mRNA and EST Sequences.")
whatis("URL:         http://research-pub.gene.com/gmap/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use gmap 2017-09-11


Product Description
-------------------
gmap is a standalone program for mapping and aligning cDNA sequences 
to a genome. The program maps and aligns a single sequence with 
minimal startup time and memory requirements, and provides fast 
batch processing of large sequence sets. The program generates 
accurate gene structures, even in the presence of substantial 
polymorphisms and sequence errors, without using probabilistic splice 
site models. Methodology underlying the program includes a minimal 
sampling strategy for genomic mapping, oligomer chaining for 
approximate alignment, sandwich DP for splice site detection, and 
microexon identification with statistical significance testing. 


Dependencies
------------
intel/2017
zlib/1.2.8
bzip2/1.0.6


Documentation
-------------
Online documentation is available at:

http://research-pub.gene.com/gmap/src/README

]])


-- Prerequisites
load("zlib/1.2.8")
load("bzip2/1.0.6")


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
