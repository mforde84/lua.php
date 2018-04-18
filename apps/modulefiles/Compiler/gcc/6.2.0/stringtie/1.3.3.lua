-- -*- lua -*-


------------------------------------------------------------------------
-- StringTie 1.3.3
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
whatis("Name:        StringTie")
whatis("Version:     1.3.3")
whatis("Category:    Assembly")
whatis("Description: Assembler of RNA-Seq alignments into potential transcripts.")
whatis("URL:         https://ccb.jhu.edu/software/stringtie/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use StringTie 1.3.3.


Product Description
-------------------
StringTie is a fast and highly efficient assembler of RNA-Seq 
alignments into potential transcripts. It uses a novel network flow 
algorithm as well as an optional de novo assembly step to assemble 
and quantitate full-length transcripts representing multiple splice 
variants for each gene locus. Its input can include not only the 
alignments of raw reads used by other transcript assemblers, but 
also alignments longer sequences that have been assembled from 
those reads.In order to identify differentially expressed genes 
between experiments, StringTie's output can be processed by 
specialized software like Ballgown, Cuffdiff or other programs 
(DESeq2, edgeR, etc.). 


Dependencies
------------
gcc/6.2.0
zlib/1.2.8


Documentation
-------------
Online documentation is available at:

https://ccb.jhu.edu/software/stringtie/index.shtml?t=manual

]])


-- Prerequisites
load("zlib/1.2.8")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
