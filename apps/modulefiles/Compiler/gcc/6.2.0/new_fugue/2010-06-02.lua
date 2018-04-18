-- -*- lua -*-


------------------------------------------------------------------------
-- new_fugue 2010-06-02
-- Mike Jarsulic
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
whatis("Name:        new_fugue")
whatis("Version:     2010-06-02")
whatis("Category:    halotypes")
whatis("Description: Estimation of haplotype frequencies and linkage disequilibrium coefficients in family data.")
whatis("URL:         http://genome.sph.umich.edu/wiki/New_Fugue")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use new_fugue 2010-06-02.


Product Description
-------------------
New Fugue is a program for estimation of haplotype frequencies and linkage 
disequilibrium coefficients in family data. The current implementation uses 
the methods described by Abecasis and Wigginton (2005) and originally 
implemented in the Merlin package.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8


Documentation
-------------
Online documentation is available at:

http://genome.sph.umich.edu/wiki/New_Fugue

]])


-- PATH
prepend_path('PATH', installDir)
