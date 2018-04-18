-- -*- lua -*-


------------------------------------------------------------------------
-- SHRiMP 2.2.3
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
whatis("Name:        SHRiMP")
whatis("Version:     2.2.3")
whatis("Category:    alignment")
whatis("Description: Software package for aligning genomic reads against a target genome.")
whatis("URL:         http://compbio.cs.toronto.edu/shrimp/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use SHRiMP 2.2.3.


Product Description
-------------------
SHRiMP is a software package for aligning genomic reads against a 
target genome. It was primarily developed with the multitudinous 
short reads of next generation sequencing machines in mind, as 
well as Applied Biosystem's colourspace genomic representation. 


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

http://compbio.cs.toronto.edu/shrimp/README

]])



-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
