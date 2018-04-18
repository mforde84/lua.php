-- -*- lua -*-


------------------------------------------------------------------------
-- calc-roi-covg
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
whatis("Name:        calc-roi-covg")
whatis("Version:     n/a")
whatis("Category:    variants")
whatis("Description: Count the AT/CG/CpG sites with sufficient read-depth in two BAM files.")
whatis("URL:         https://github.com/ding-lab/calc-roi-covg")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use calc-roi-covg.


Product Description
-------------------
Given two BAM files, a reference sequence, and regions of interest, 
count the AT/CG/CpG sites with sufficient read-depth in both BAMs.

This tool was originally designed to count base-pairs that have 
sufficient read-depth for variant calling across two BAM files 
(case vs control). The base-pairs are further classified into AT, 
CG (non-CpG), and CpG sites, with respect to the provided reference 
sequence. The resulting coverage stats are reported for each region 
of interest (ROI).

Sample ROI files can be found under the 'data' subdirectory. Note 
that they use 1-based loci, and must be sorted by chromosome or 
contig names.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://github.com/ding-lab/calc-roi-covg

]])



--MODULE
load("samtools/0.1.19")


-- PATH
prepend_path('PATH', installDir)


