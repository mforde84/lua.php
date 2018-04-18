-- -*- lua -*-


------------------------------------------------------------------------
-- bowtie 1.2.1.1
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
whatis("Name:        bowtie")
whatis("Version:     1.2.1.1")
whatis("Category:    Aligner")
whatis("Description: Tool for aligning sequencing reads to long reference sequences")
whatis("URL:         http://bowtie-bio.sourceforge.net/index.shtml")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use bowtie 1.2.1.1


Product Description
-------------------
Bowtie is an ultrafast, memory-efficient short read aligner. It aligns 
short DNA sequences (reads) to the human genome at a rate of over 
25 million 35-bp reads per hour. Bowtie indexes the genome with a 
Burrows-Wheeler index to keep its memory footprint small: typically 
about 2.2 GB for the human genome (2.9 GB for paired-end).


Dependencies
------------
gcc/6.2.0
tbb/2017


Documentation
-------------
Online documentation is available at:

http://bowtie-bio.sourceforge.net/manual.shtml

]])


-- Prerequisites
load("tbb/2017")
load("python/2.7.13")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
