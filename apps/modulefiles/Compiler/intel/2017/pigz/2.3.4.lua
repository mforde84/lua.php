-- -*- lua -*-


------------------------------------------------------------------------
-- pigz 2.3.4
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
whatis("Name:        pigz")
whatis("Version:     2.3.4")
whatis("Category:    compression")
whatis("Description: Parallel implementation of gzip.")
whatis("URL:         http://zlib.net/pigz/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use pigz 2.3.4


Product Description
-------------------
pigz, which stands for parallel implementation of gzip, is a fully 
functional replacement for gzip that exploits multiple processors 
and multiple cores to the hilt when compressing data.


Dependencies
------------
intel/2017
zlib/1.2.8


Documentation
-------------
The following man pages are available:

pigz(1)

Online documentation is available at:

http://zlib.net/pigz/pigz.pdf


]])


-- Prerequisites
load("zlib/1.2.8")


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man Pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))


