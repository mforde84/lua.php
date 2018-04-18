-- -*- lua -*-


------------------------------------------------------------------------
-- bwa 0.7.17
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
whatis("Name:        Burrows-Wheeler Aligner")
whatis("Version:     0.7.17")
whatis("Category:    alignment")
whatis("Description: Align sequencing reads against a reference genome")
whatis("URL:         http://bio-bwa.sourceforge.net")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use bwa 0.7.17


Product Description
-------------------
BWA is a software package for mapping low-divergent sequences against 
a large reference genome, such as the human genome. It consists of 
three algorithms: BWA-backtrack, BWA-SW and BWA-MEM. The first 
algorithm is designed for Illumina sequence reads up to 100bp, 
while the rest two for longer sequences ranged from 70bp to 1Mbp. 
BWA-MEM and BWA-SW share similar features such as long-read 
support and split alignment, but BWA-MEM, which is the latest, 
is generally recommended for high-quality queries as it is faster 
and more accurate. BWA-MEM also has better performance than 
BWA-backtrack for 70-100bp Illumina reads. 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
The following man pages are available:
bwa(1)

Online documentation is available at:

http://bio-bwa.sourceforge.net/bwa.shtml

]])


-- Executables
prepend_path('PATH', installDir)


-- Man Pages
prepend_path('MANPATH', pathJoin(installDir,"man"))


