-- -*- lua -*-


------------------------------------------------------------------------
-- samblaster 2.1.1
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
whatis("Name:        samblaster")
whatis("Version:     0.1.24")
whatis("Category:    postprocessing alignments")
whatis("Description: samblaster is a fast and flexible program for marking duplicates in read-id grouped1 paired-end SAM files.")
whatis("URL:         https://github.com/GregoryFaust/samblaster")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use samblaster 0.1.24.


Product Description
-------------------
samblaster is a fast and flexible program for marking duplicates in read-id 
grouped1 paired-end SAM files. It can also optionally output discordant 
read pairs and/or split read mappings to separate SAM files, and/or 
unmapped/clipped reads to a separate FASTQ file. When marking duplicates, 
samblaster will require approximately 20MB of memory per 1M read pairs.



Documentation
-------------
Online documentation is available at:

https://github.com/GregoryFaust/samblaster

]])


-- PATH
prepend_path('PATH', pathJoin(installDir))
