-- -*- lua -*-


------------------------------------------------------------------------
-- Mercurial 4.2.2
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
whatis("Name:        Mercurial")
whatis("Version:     4.2.2")
whatis("Category:    programming")
whatis("Description: Source control management tool.")
whatis("URL:         https://www.mercurial-scm.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Mercurial 4.2.2


Product Description
-------------------
Mercurial is a free, distributed source control management tool. It 
offers you the power to efficiently handle projects of any size while 
using an intuitive interface. It is easy to use and hard to break, 
making it ideal for anyone working with versioned files. 


Dependencies
------------
intel/2017
python/2.7.13


Documentation
-------------
Online documentation is available at:

https://www.mercurial-scm.org/guide

]])


-- Prerequisites
load("python/2.7.13")


-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


