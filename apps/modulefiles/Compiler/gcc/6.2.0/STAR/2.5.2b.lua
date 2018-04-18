-- -*- lua -*-


------------------------------------------------------------------------
-- STAR 2.5.2b
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
whatis("Name:        STAR")
whatis("Version:     2.5.2b")
whatis("Category:    alignment")
whatis("Description: Aligner for non-contiguous sequences.")
whatis("URL:         https://github.com/alexdobin/STAR")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use STAR 2.5.2b


Product Description
-------------------
Many previously described RNA-seq aligners were developed as 
extensions of contiguous (DNA) short read mappers, which were used 
to either align short reads to a database of splice junctions or 
align split-read portions contiguously to a reference genome, or a 
combination thereof. In contrast to these approaches, STAR was 
designed to align the non-contiguous sequences directly to the 
reference genome. STAR algorithm consists of two major steps: 
seed searching step and clustering/stitching/scoring step.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://github.com/alexdobin/STAR/blob/master/doc/STARmanual.pdf

]])


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))

