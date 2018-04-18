-- -*- lua -*-


------------------------------------------------------------------------
-- Cufflinks 2.2.1
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
whatis("Name:        Cufflinks")
whatis("Version:     2.2.1")
whatis("Category:    assembly")
whatis("Description: Transcriptome assembly and differential expression analysis for RNA-Seq.")
whatis("URL:         http://cole-trapnell-lab.github.io/cufflinks/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Cufflinks 2.2.1.


Product Description
-------------------
Cufflinks assembles transcripts, estimates their abundances, and tests 
for differential expression and regulation in RNA-Seq samples. It accepts 
aligned RNA-Seq reads and assembles the alignments into a parsimonious 
set of transcripts. Cufflinks then estimates the relative abundances of 
these transcripts based on how many reads support each one, taking into 
account biases in library preparation protocols.


Dependencies
------------
gcc/6.2.0
boost/1.55.0
samtools/0.1.19


Documentation
-------------
Online documentation is available at:

http://cole-trapnell-lab.github.io/cufflinks/manual/

]])


-- Prerequisites
load("boost/1.55.0")
load("samtools/0.1.19")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
