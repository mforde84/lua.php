-- -*- lua -*-


------------------------------------------------------------------------
-- BLAST 2.5.0
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
whatis("Name:        BLAST")
whatis("Version:     2.5.0")
whatis("Category:    alignment")
whatis("Description: Finds regions of similarity between biological sequences.")
whatis("URL:         https://blast.ncbi.nlm.nih.gov/Blast.cgi")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use BLAST 2.5.0


Product Description
-------------------
The Basic Local Alignment Search Tool (BLAST) finds regions of local 
similarity between sequences. The program compares nucleotide or protein
sequences to sequence databases and calculates the statistical 
significance of matches. BLAST can be used to infer functional and 
evolutionary relationships between sequences as well as help identify 
members of gene families.


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

https://www.ncbi.nlm.nih.gov/books/NBK279690/


]])



-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))

-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))

