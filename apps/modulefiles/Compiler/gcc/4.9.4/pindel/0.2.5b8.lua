-- -*- lua -*-


------------------------------------------------------------------------
-- Pindel 0.2.5b8
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
whatis("Name:        Pindel")
whatis("Version:     0.2.5b8")
whatis("Category:    variants")
whatis("Description: Variant detection in next-gen sequencing data")
whatis("URL:         http://gmt.genome.wustl.edu/packages/pindel/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Pindel 0.2.5b8


Product Description
-------------------
Pindel can detect breakpoints of large deletions, medium sized 
insertions, inversions, tandem duplications and other structural 
variants at single-based resolution from next-gen sequence data. It 
uses a pattern growth approach to identify the breakpoints of these 
variants from paired-end short reads.


Dependencies
------------
gcc/4.9.4
htslib/1.3.2
zlib/1.2.8


Documentation
-------------
Online documentation is available at:

http://gmt.genome.wustl.edu/packages/pindel/

]])


-- Prerequisites
load("htslib/1.3.2")


-- Executables
prepend_path('PATH', installDir)


