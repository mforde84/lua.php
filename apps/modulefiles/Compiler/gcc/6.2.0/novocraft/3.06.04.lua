-- -*- lua -*-


------------------------------------------------------------------------
-- Novocraft 3.06.04
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
whatis("Name:        Novocraft")
whatis("Version:     3.06.04")
whatis("Category:    alignment")
whatis("Description: Mapping of short reads onto a reference genome from Illumina, Ion Torrent, and 454 NGS platforms")
whatis("URL:         http://www.novocraft.com")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Novocraft 3.06.04


Product Description
-------------------
Novoalign and NovoalignCS are highly accurate programs for mapping 
next-generation sequencing reads to a reference database.


Dependencies
------------
gcc/6.2.0
java-jdk/1.8.0_92
bedtools/2.26.0
zlib/1.2.8
samtools/1.3.1
picard/2.8.1
gatk/3.7


Documentation
-------------
Online documentation is available at:

http://www.novocraft.com/documentation/novoalign-2/

]])


-- Prerequisites
load("bedtools/2.26.0")
load("samtools/1.3.1")
load("java-jdk/1.8.0_92")
load("picard/2.8.1")
load("gatk/3.7")


-- Executables
prepend_path('PATH', installDir)



