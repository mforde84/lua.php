-- -*- lua -*-


------------------------------------------------------------------------
-- bcl2fastq2 2.20.0
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        bcl2fastq2")
whatis("Version:     2.20.0")
whatis("Category:    conversion")
whatis("Description: Convert BCL files from Illumina sequencing systems running RTA >=1.18.54")
whatis("URL:         https://www.illumina.com")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use bcl2fastq2 2.20.0.


Product Description
-------------------
The Illumina sequencing instruments generate per-cycle base call (BCL)
files at the end of the sequencing run. A majority of analysis 
applications use per-read FASTQ files as input for analysis. You can
use the bcl2fastq2 Conversion Software v2.20 to convert base call (BCL)
files from a sequencing run into FASTQ files.


Dependencies
------------
gcc/4.9.4
boost/1.55.0


Documentation
-------------
Online documentation is available at:

https://support.illumina.com/content/dam/illumina-support/documents/downloads/software/bcl2fastq/bcl2fastq2-v2-18-software-guide-15051736-01.pdf

]])


-- Prerequisites
load("boost/1.55.0")


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))

