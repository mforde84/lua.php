-- -*- lua -*-


------------------------------------------------------------------------
-- redundans 0.13c 
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-5.4.0"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        redundans")
whatis("Version:     0.13c")
whatis("Category:    assembly")
whatis("Description: Pipeline that assists an assembly of heterozygous/polymorphic genomes.")
whatis("URL:         https://github.com/lpryszcz/redundans")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use redundans 0.13c.


Product Description
-------------------
Redundans pipeline assists an assembly of heterozygous genomes. It 
takes as input assembled contigs, sequencing libraries and/or 
reference sequence and returns scaffolded homozygous genome assembly. 
Final assembly should be less fragmented and with total size smaller 
than the input contigs. In addition, Redundans will automatically close 
the gaps resulting from genome assembly or scaffolding.


Dependencies
------------
gcc/5.4.0
python/2.7.13
zlib/1.2.8


Documentation
-------------
Online documentation is available at:

https://github.com/lpryszcz/redundans/blob/master/README.md

]])


-- Prerequisites
load("python/2.7.13")
load("zlib/1.2.8")


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


