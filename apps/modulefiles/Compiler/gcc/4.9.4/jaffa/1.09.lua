-- -*- lua -*-


------------------------------------------------------------------------
-- JAFFA 1.09
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
whatis("Name:        JAFFA")
whatis("Version:     1.09")
whatis("Category:    gene-fusion")
whatis("Description: Search for gene fusions give RNA-Seq reads or pre-assembled transcripts.")
whatis("URL:         https://github.com/Oshlack/JAFFA")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use JAFFA 1.09


Product Description
-------------------
JAFFA is a multi-step pipeline that takes either raw RNA-Seq reads, 
or pre-assembled transcripts, then searches for gene fusions. It 
will output the names and locations of candidate gene fusions along 
with the cDNA sequence of their breakpoints. JAFFA is based on the 
idea of comparing a transcriptome (e.g. in a cancer sample) against 
a reference transcriptome. In this way, it is a transcript-centric 
approach rather than a genome-centric approach like other fusion 
finders. In validation studies, JAFFA performed well over a range 
of read lengths - from 50bp to full-length transcripts and on single 
and paired-end reads.


Dependencies
------------
gcc/4.9.4
java-jdk/1.8.0_92
R/3.1.3


Documentation
-------------
Online documentation is available at:

https://github.com/Oshlack/JAFFA/wiki/Example

]])


-- Prerequisites
load("java-jdk/1.8.0_92")
load("R/3.1.3")


-- Executables
prepend_path('PATH', pathJoin(installDir,"tools/bin"))

