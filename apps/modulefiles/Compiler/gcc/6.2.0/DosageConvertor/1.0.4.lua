-- -*- lua -*-


------------------------------------------------------------------------
-- DosageConvertor 1.0.4
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
whatis("Name:        DosageConvertor")
whatis("Version:     1.0.4")
whatis("Category:    convertor")
whatis("Description: DosageConvertor is a C++ tool to convert dosage files in VCF format from Minimac3/4 to other formats such as MaCH or PLINK.")
whatis("URL:         https://genome.sph.umich.edu/wiki/DosageConvertor")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use DosageConvertor 1.0.4.


Product Description
-------------------
DosageConvertor is a C++ tool to convert dosage files (in VCF format) from Minimac3/4 to other formats such as MaCH or PLINK. 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://genome.sph.umich.edu/wiki/DosageConvertor

]])



-- PATH
prepend_path('PATH', installDir)
