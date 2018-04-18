-- -*- lua -*-


------------------------------------------------------------------------
-- HISAT2 2.0.5
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
whatis("Name:        HISAT2")
whatis("Version:     2.0.5")
whatis("Category:    alignment")
whatis("Description: Alignment program for mapping next-generation sequencing reads (both DNA and RNA) to a population of human genomes.")
whatis("URL:         https://ccb.jhu.edu/software/hisat2/index.shtml")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use hisat2 2.0.5.


Product Description
-------------------
HISAT2 is a fast and sensitive alignment program for mapping 
next-generation sequencing reads (both DNA and RNA) to a population 
of human genomes (as well as to a single reference genome). Based 
on an extension of BWT for graphs [Siren et al. 2014], we designed 
and implemented a graph FM index (GFM), an original approach and its 
first implementation to the best of our knowledge. In addition to 
using one global GFM index that represents a population of human 
genomes, HISAT2 uses a large set of small GFM indexes that 
collectively cover the whole genome (each index representing a 
genomic region of 56 Kbp, with 55,000 indexes needed to cover the 
human population). These small indexes (called local indexes), 
combined with several alignment strategies, enable rapid and accurate 
alignment of sequencing reads. This new indexing scheme is called a 
Hierarchical Graph FM index (HGFM).


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://ccb.jhu.edu/software/hisat2/manual.shtml

]])


-- PATH
prepend_path('PATH', installDir)
