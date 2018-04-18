-- -*- lua -*-


------------------------------------------------------------------------
-- Leon 1.0.0
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
whatis("Name:        Leon")
whatis("Version:     1.0.0")
whatis("Category:    Compression")
whatis("Description: Software to compress Next Generation Sequencing data.")
whatis("URL:         https://github.com/GATB/leon")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Leon 1.0.0.


Product Description
-------------------
Leon is a software to compress Next Generation Sequencing data. It 
can compress Fasta or Fastq format; plain text and gzipped files are 
supported.

The method does not require any reference genome, instead a reference 
is built de novo from the set of reads as a probabilist de Bruijn Graph. 
It uses the disk streaming k-mer counting algorithm contained in the 
GATB-Core library, and inserts solid k-mers in a bloom-filter. Each read 
is then encoded as a path in this graph, storing only an anchoring kmer 
and a list of bifurcations indicating which path to follow in the graph 
if several are possible.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8


Documentation
-------------
Online documentation is available at:

https://github.com/GATB/leon/blob/master/README.md

]])


-- Prerequisites
load("zlib/1.2.8")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))



