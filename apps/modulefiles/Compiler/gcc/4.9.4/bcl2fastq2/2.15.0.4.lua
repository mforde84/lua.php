-- -*- lua -*-


------------------------------------------------------------------------
-- bcl2fastq2 2.15.0.4
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
whatis("Version:     2.15.0.4")
whatis("Category:    conversion")
whatis("Description: Convert BCL files from Illumina sequencing systems running RTA >=2")
whatis("URL:         https://www.illumina.com")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use bcl2fastq2 2.15.0.4.


Product Description
-------------------
The Illumina sequencing instruments generate per-cycle base call (BCL)
files at the end of the sequencing run. A majority of analysis 
applications use per-read FASTQ files as input for analysis. You can
use the bcl2fastq2 Conversion Software v2.15 to convert base call (BCL)
files from a sequencing run into FASTQ files.


Dependencies
------------
gcc/4.9.4


Documentation
-------------
Online documentation is available at:

http://gensoft.pasteur.fr/docs/bcl2fastq/2.15.0/bcl2fastq2-user-guide-15051736-b.pdf

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


