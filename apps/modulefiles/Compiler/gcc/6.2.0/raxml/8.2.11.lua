-- -*- lua -*-


------------------------------------------------------------------------
-- RAxML 8.2.11
-- Qiannan Miao
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
whatis("Name:        RAxML")
whatis("Version:     8.2.11")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/stamatak/standard-RAxML")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use RAxML 8.2.11


Product Description
-------------------
RAxML (Randomized Axelerated Maximum Likelihood) is a program for sequential and parallel
Maximum Likelihood based inference of large phylogenetic trees. It can also be used for postanalyses
of sets of phylogenetic trees, analyses of alignments and, evolutionary placement of short
reads.
It has originally been derived from fastDNAml which in turn was derived from Joe Felsentein's
dnaml which is part of the PHYLIP package. 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://github.com/stamatak/standard-RAxML/blob/master/manual/NewManual.pdf

]])


-- PREREQUISITES
load("perl/5.24.0")

-- PATH
prepend_path('PATH', pathJoin(installDir))
prepend_path('PATH', pathJoin(installDir,"usefulScripts"))
