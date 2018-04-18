-- -*- lua -*-


------------------------------------------------------------------------
-- excavator2 1.1.2
-- Martin Forde 
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
whatis("Name:        excavator2")
whatis("Version:     1.1.2")
whatis("Category:    variants-CNV")
whatis("Description: Analyses Whole Exome Sequencing (WES) data to identify CNVs")
whatis("URL:         https://sourceforge.net/projects/excavator2tool/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use excavator2 1.1.2


Product Description
-------------------
EXCAVATOR2 is a collection of bash, R and Fortran scripts and codes that
analyses Whole Exome Sequencing (WES) data to identify CNVs. EXCAVATOR2
enhances the identification of all genomic CNVs, both overlapping and 
non-overlapping targeted exons by integrating the analysis of In-targets
and Off- targets reads. EXCAVATOR2 can be effectively employed for the 
identification of CNVs in small as well as large-scale re-sequencing 
population and cancer studies. 


Usage
-----
When this module is loaded, the environmental variable EXCAVATOR_PATH is available.

Example:

perl ${EXCAVATOR_PATH}EXCAVATORDataAnalysis.pl
perl ${EXCAVATOR_PATH}EXCAVATORDataPrepare.pl
perl ${EXCAVATOR_PATH}TargetPerla.pl

or simply

EXCAVATORDataAnalysis.pl
EXCAVATORDataPrepare.pl
TargetPerla.pl

Also you can find all of the dependencies, libraries, and ancillary scripting by:

cd $EXCAVATOR_PATH; ls -lh;


Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

https://sourceforge.net/projects/excavator2tool/files/EXCAVATOR2Manual.pdf/download

]])

-- Prerequisites
load("samtools/1.6.0")
load("perl/5.24.0")
load("R/3.4.1")


-- EXCAVATOR_PATH Environment Variable
setenv("EXCAVATOR_PATH", installDir)


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', installDir)
