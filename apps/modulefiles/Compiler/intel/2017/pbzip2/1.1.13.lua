-- -*- lua -*-


------------------------------------------------------------------------
-- PBZIP2 1.1.13
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
whatis("Name:        PBZIP2")
whatis("Version:     1.1.13")
whatis("Category:    date-compression")
whatis("Description: Parallel implementation of bzip2.")
whatis("URL:         http://compression.ca/pbzip2/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use PBZIP2 1.1.13


Product Description
-------------------
PBZIP2 is a parallel implementation of the bzip2 block-sorting file 
compressor that uses pthreads and achieves near-linear speedup on 
SMP machines.


Dependencies
------------
intel/2017
bzip2/1.0.6


Documentation
-------------
The following man pages are available:
pbzip2(1)

Online documentation is available at:

http://compression.ca/pbzip2/

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man Pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))


