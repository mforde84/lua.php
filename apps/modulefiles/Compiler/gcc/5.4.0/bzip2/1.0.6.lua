-- -*- lua -*-


------------------------------------------------------------------------
-- bzip2 1.0.6
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-5.4.0"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        bzip2")
whatis("Version:     1.0.6")
whatis("Category:    compression, library")
whatis("Description: Library for data compression")
whatis("URL:         http://www.bzip.org")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use bzip2 1.0.6 


Product Description
-------------------
bzip2 is a freely available, patent free, high-quality data 
compressor. It typically compresses files to within 10% to 15% of 
the best available techniques (the PPM family of statistical 
compressors), whilst being around twice as fast at compression and 
six times faster at decompression.


Dependencies
------------
gcc/5.4.0


Documentation
-------------
The following man pages are available:

bzcmp(1), bzdiff(1), bzegrep(1), bzfgrep(1), bzgrep(1), bzip2(1),
bzless(1), bzmore(1)


Online documentation is available at:

http://www.bzip.org/docs.html

]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))



-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"man"))


