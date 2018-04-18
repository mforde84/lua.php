-- -*- lua -*-


------------------------------------------------------------------------
-- Athlates 2014_04_26
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
whatis("Name:        Athlates")
whatis("Version:     2014_04_26")
whatis("Category:    hla-typing")
whatis("Description: Determine HLA genotypes for individuals from Illumina exome sequencing data.")
whatis("URL:         https://www.broadinstitute.org/viral-genomics/athlates")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Athlates 2014_04_26.


Product Description
-------------------
Athlates is a software package for determining HLA genotypes for 
individuals from Illumina exome sequencing data. ATHLATES has been 
tested with 101 base paired end reads using standard whole exome kits 
but should be applicable to any paired sequencing of similar or 
greater length and accuracy that covers the HLA exons with sufficient 
depth (including whole genome shotgun and RNA-Seq data).


Dependencies
------------
intel/2017
bamtools/2.4.1


Documentation
-------------
Documentation is available at:

/apps/software/intel-2017/athlates/2014_04_26/documentation/Athlates.pdf 


]])


-- Prerequisites
load("bamtools/2.4.1")


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


