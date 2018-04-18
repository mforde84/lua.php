-- -*- lua -*-


------------------------------------------------------------------------
-- verifyBamID 1.1.3
-- Tony Aburaad
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
whatis("Name:        verifyBamID")
whatis("Version:     1.1.3")
whatis("Category:    toolset")
whatis("Description: Verifies whether the reads in particular file match previously known genotypes for an individual")
whatis("URL:         http://genome.sph.umich.edu/wiki/VerifyBamID")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use verifyBamID


Product Description
-------------------
verifyBamID is a software that verifies whether the reads in particular file match previously known genotypes for 
an individual (or group of individuals), and checks whether the reads are contaminated as a mixture of two samples. 
verifyBamID can detect sample contamination and swaps when external genotypes are available. When external genotypes 
are not available, verifyBamID still robustly detects sample swaps.

Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://genome.sph.umich.edu/wiki/VerifyBamID

]])


-- PATH
prepend_path('PATH', installDir)


