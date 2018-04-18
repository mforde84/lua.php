-- -*- lua -*-


------------------------------------------------------------------------
-- MQLS-XM 1.0
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
whatis("Name:        MQLS-XM")
whatis("Version:     1.0")
whatis("Category:    statistics")
whatis("Description: Autosomal and X-chromosome association testing of a binary trait in case-control samples with related individuals.")
whatis("URL:         https://www.stat.uchicago.edu/~mcpeek/software/MQLS_XM/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use MQLS-XM 1.0


Product Description
-------------------
MQLS-XM is a program,  written in C, that performs single-SNP, 
case-control associationtesting on the autosomal chromosomes and the 
X-chromosome in samples with related individuals. The program is 
applicable to association studies with completely general combinations 
of related and unrelated individuals, where the relationships among the 
sampled individuals are assumed to be known. For instance, the program 
allows cases to be related to controls, and it is equally applicable to 
complex inbred pedigrees and to simpler study designs consisting of 
unrelated individuals and small outbred families.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://www.stat.uchicago.edu/~mcpeek/software/MQLS_XM/MQLS_XM_Documentation.pdf

]])


-- Executables
prepend_path('PATH', installDir)


