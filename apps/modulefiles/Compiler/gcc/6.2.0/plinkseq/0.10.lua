-- -*- lua -*-


------------------------------------------------------------------------
-- PLINK/SEQ 0.10
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
whatis("Name:        PLINK/SEQ")
whatis("Version:     0.10")
whatis("Category:    toolkit")
whatis("Description: A toolkit for working with human genetic variation data.")
whatis("URL:         https://atgu.mgh.harvard.edu/plinkseq/index.shtml")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use PLINK/SEQ 0.10


Product Description
-------------------
PLINK/SEQ is an open-source C/C++ toolkit for working with human 
genetic variation data. The specific focus is to provide a platform 
for analytic tool development for variation data from large-scale 
resequencing and genotyping projects, particularly whole-exome and 
whole-genome studies. It is independent of (but designed to be 
complementary to) the existing PLINK package.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://atgu.mgh.harvard.edu/plinkseq/tutorial.shtml

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))



