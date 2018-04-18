-- -*- lua -*-


------------------------------------------------------------------------
-- MACH 1.0.18
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
whatis("Name:        MACH")
whatis("Version:     1.0.18")
whatis("Category:    halotype")
whatis("Description: Markov Chain based haplotyper.")
whatis("URL:         http://csg.sph.umich.edu/abecasis/MaCH/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use MACH 1.0.18


Product Description
-------------------
MACH 1.0.18 is a Markov Chain based haplotyper that can resolve long 
haplotypes or infer missing genotypes in samples of unrelated 
individuals.


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

http://csg.sph.umich.edu/abecasis/MaCH/tour/

]])


-- Executables
prepend_path('PATH', installDir)


