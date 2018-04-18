-- -*- lua -*-


------------------------------------------------------------------------
-- metaphlan2 2.6.0
-- Tony Aburaad 
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
whatis("Name:        metaphlan2")
whatis("Version:     2.6.0")
whatis("Category:    analysis")
whatis("Description: Computational tool for profiling the composition of microbial communities.")
whatis("URL:         https://bitbucket.org/biobakery/metaphlan2")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use metaphlan2.


Product Description
-------------------
MetaPhlAn is a computational tool for profiling the composition of microbial communities (Bacteria, Archaea, 
'Eukaryotes and Viruses) from metagenomic shotgun sequencing data with species level resolution. From version 
2.0, MetaPhlAn is also able to identify specific strains (in the not-so-frequent cases in which the sample 
contains a previously sequenced strains) and to track strains across samples for all species.


Use
---
Run metaphlan2.py with desired flags.


Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

https://bitbucket.org/biobakery/metaphlan2

]])

-- Prerequisites
load("python/2.7.13")

-- Executables
prepend_path('PATH', installDir)

prepend_path('mpa_dir', installDir)

