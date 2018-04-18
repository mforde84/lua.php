-- -*- lua -*-


------------------------------------------------------------------------
-- Blat 35
-- Mike Jarsulic
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "intel-2017"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        Blat")
whatis("Version:     35")
whatis("Category:    alignment")
whatis("Description: BLAST-like alignment tool.")
whatis("URL:         http://www.kentinformatics.com/products.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Blat 35.


Product Description
-------------------
BLAT is a bioinformatics software a tool which performs rapid 
mRNA/DNA and cross-species protein alignments. BLAT is more accurate 
and 500 times faster than popular existing tools for mRNA/DNA 
alignments and 50 times faster for protein alignments at sensitivity 
settings typically used when comparing vertebrate sequences.

BLAT is not BLAST. DNA BLAT works by keeping an index of the entire 
genome (but not the genome itself) in memory. Since the index takes 
up a bit less than a gigabyte of RAM, BLAT can deliver high 
performance on a reasonably priced Linux box. 


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

http://genome.ucsc.edu/goldenPath/help/blatSpec.html

]])


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
