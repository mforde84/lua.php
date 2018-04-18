-- -*- lua -*-



------------------------------------------------------------------------
-- MaSuRCA 3.2.4
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
whatis("Name:        MaSuRCA")
whatis("Version:     3.2.4")
whatis("Category:    assembly")
whatis("Description: Software package genome assembly.")
whatis("URL:         http://masurca.blogspot.com/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use SHRiMP 2.2.3.


Product Description
-------------------
The MaSuRCA assembler combines the benefits of deBruijn
graph and Overlap Consensus assembly approaches. 


Dependencies
------------
gcc/6.2.0
boost/1.61.0
bzip2/1.0.6
perl/5.24.0
mascura/3.2.4


Documentation
-------------
Online documentation is available at:

http://masurca.blogspot.com/

]])

load("gcc/6.2.0")
load("perl/5.24.0")
load("boost/1.61.0")
load("bzip2/1.0.6")

-- Libraries
prepend_path('LIB', pathJoin(installDir,"lib"))
-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))


