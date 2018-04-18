-- -*- lua -*-


------------------------------------------------------------------------
-- PASA 2.1.0
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
whatis("Name:        pasa")
whatis("Version:     2.1.0")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://pasapipeline.github.io/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use PASA 2.1.0


Product Description
-------------------
PASA, acronym for Program to Assemble Spliced Alignments, is a eukaryotic 
genome annotation tool that exploits spliced alignments of expressed 
transcript sequences to automatically model gene structures, and to 
maintain gene structure annotation consistent with the most recently 
available experimental sequence data. PASA also identifies and classifies 
all splicing variations supported by the transcript alignments.


Dependencies
------------
gcc/6.2.0
perl/5.24.0
fasta36/36.3.8d
blat/35
gmap/2017-09-11
blast/2.2.24


Documentation
-------------
Online documentation is available at:

http://pasapipeline.github.io/

]])


-- PREREQUISITE
load("perl/5.24.0")
load("fasta36/36.3.8d")
load("blat/35")
load("gmap/2017-09-11")
load("blast/2.2.24")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"seqclean/seqclean"))
