-- -*- lua -*-


------------------------------------------------------------------------
-- SPAdes 3.10.1
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
whatis("Name:        SPAdes")
whatis("Version:     3.10.1")
whatis("Category:    assembly")
whatis("Description: Assembly toolkit containing various assembly pipelines.")
whatis("URL:         http://cab.spbu.ru/software/spades/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use SPAdes 3.10.1.


Product Description
-------------------
SPAdes -- St. Petersburg genome assembler -- is an assembly toolkit 
containing various assembly pipelines.

Version 3.10.1 of SPAdes supports paired-end reads, mate-pairs and 
unpaired reads. SPAdes can take as input several paired-end and 
mate-pair libraries simultaneously. Note, that SPAdes was initially 
designed for small genomes. It was tested on bacterial (both 
single-cell MDA and standard isolates), fungal and other small 
genomes. SPAdes is not intended for larger genomes (e.g. mammalian 
size genomes)


Dependencies
------------
gcc/6.2.0
python/2.7.13


Documentation
-------------
Online documentation is available at:

http://cab.spbu.ru/files/release3.10.1/manual.html

]])


-- Prerequisites
load("python/2.7.13")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
