-- -*- lua -*-


------------------------------------------------------------------------
-- Novocraft 3.03.00
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
whatis("Name:        Novocraft")
whatis("Version:     3.03.00")
whatis("Category:    alignment")
whatis("Description: Mapping of short reads onto a reference genome from Illumina, Ion Torrent, and 454 NGS platforms")
whatis("URL:         http://www.novocraft.com")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Novocraft 3.03.00


Product Description
-------------------
Novoalign and NovoalignCS are highly accurate programs for mapping 
next-generation sequencing reads to a reference database.


Dependencies
------------
gcc/4.9.4
java-jdk/1.7.0_80
bedtools/2.25.0
zlib/1.2.8
samtools/0.1.19
picard/1.125
gatk/2.7-4


Documentation
-------------
Online documentation is available at:

http://www.novocraft.com/documentation/novoalign-2/

]])


-- Prerequisites
load("bedtools/2.25.0")
load("samtools/0.1.19")
load("java-jdk/1.7.0_80")
load("picard/1.125")
load("gatk/2.7-4")


-- Executables
prepend_path('PATH', installDir)




