-- -*- lua -*-


------------------------------------------------------------------------
-- ROP 1.0.6
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
whatis("Name:        ROP")
whatis("Version:     1.0.6")
whatis("Category:    rna-seq")
whatis("Description: Computational protocol to discover the source of all reads, from  RNA molecules, antibodies and microbes.")
whatis("URL:         https://github.com/smangul1/rop")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use ROP 1.0.6


Product Description
-------------------
ROP is a computational protocol aimed to discover the source of all 
reads, which originate from complex RNA molecules, recombinant 
antibodies and microbial communities. The ROP accounts for 98.8% of 
all reads across poly(A) and ribo-depletion protocols, compared to 
83.8% by conventional reference-based protocols. ROP profiles 
repeats, circRNAs, gene fusions, trans-splicing events, recombined 
B/T-cell receptor sequences and microbial communities. The 
"dumpster diving" profile of unmapped reads output by our method 
is not limited to RNA-Seq technology and may be applied to 
whole-exome and whole-genome sequencing.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://github.com/smangul1/rop/wiki

]])


-- Prerequisites
load("python/2.7.13")


-- PATH
prepend_path('PATH', installDir)

