-- -*- lua -*-


------------------------------------------------------------------------
-- GENECONV 0.18a
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
whatis("Name:        geneconv")
whatis("Version:     0.18a")
whatis("Category:    gene-conversion")
whatis("Description: Statistical tests for detecting gene conversion")
whatis("URL:         https://www.math.wustl.edu/~sawyer/geneconv/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use GENECONV 0.18a


Product Description
-------------------
Given an alignment of DNA or protein sequences, GENECONV finds the 
most likely candidates for aligned gene conversion events between 
pairs of sequences in the alignment. The program can also look for 
gene conversion events from outside of the alignment. Candidate 
events are ranked by multiple-comparison corrected P-values and 
listed to a spreadsheet-like output file. 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://www.math.wustl.edu/~sawyer/geneconv/gconvdoc.html

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


