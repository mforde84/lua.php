-- -*- lua -*-


------------------------------------------------------------------------
-- Homer 4.9.1
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
whatis("Name:        Homer")
whatis("Version:     4.9.1")
whatis("Category:    motifs")
whatis("Description: Suite of tools for motif discovery and next-gen sequencing analysis.")
whatis("URL:         http://homer.salk.edu/homer/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Homer 4.9.1.


Product Description
-------------------
HOMER (Hypergeometric Optimization of Motif EnRichment) is a suite of 
tools for Motif Discovery and next-gen sequencing analysis.  It is a 
collection of command line programs for unix-style operating systems 
written in Perl and C++. HOMER was primarily written as a de novo motif 
discovery algorithm and is well suited for finding 8-20 bp motifs in 
large scale genomics data.  HOMER contains many useful tools for 
analyzing ChIP-Seq, GRO-Seq, RNA-Seq, DNase-Seq, Hi-C and numerous 
other types of functional genomics sequencing data sets.


Dependencies
------------
gcc/6.2.0
perl/5.24.0
samtools/1.3.1
blat/35
ghostscript/9.20
weblogo/2.8.2


Documentation
-------------
Online documentation is available at:

http://homer.salk.edu/homer/introduction/programs.html

]])


-- Prerequisites
load("perl/5.24.0")
load("samtools/1.3.1")
load("blat/35")
load("ghostscript/9.20")
load("weblogo/2.8.2")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))

