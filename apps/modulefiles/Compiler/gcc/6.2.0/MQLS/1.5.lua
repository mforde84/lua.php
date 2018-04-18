-- -*- lua -*-


------------------------------------------------------------------------
-- MQLS 1.5
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
whatis("Name:        MQLS")
whatis("Version:     1.5")
whatis("Category:    statistics")
whatis("Description: Case-control association testing of a binary trait in samples that contain related individuals.")
whatis("URL:         https://www.stat.uchicago.edu/~mcpeek/software/MQLS/download.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use MQLS 1.5


Product Description
-------------------
MQLS is a program, written in C, for case-control association testing 
of a binary trait in samples that contain related individuals.  
The program allows for testing association of the trait with any number 
of binary or multiallelic markers (e.g. from a genomewide screen), where 
separate tests are performed at each marker. The program is applicable to 
association studies with completely general combinations of related and 
unrelated individuals, where the relationships among the sampled individuals
are assumed to be known. For instance, the program allows cases to be related 
to controls, and it is equally applicable to complex inbred pedigrees and to
simpler study designs consisting of unrelated individuals and small outbred 
families. 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://www.stat.uchicago.edu/~mcpeek/software/MQLS/MQLS_README

]])


-- Executables
prepend_path('PATH', installDir)


