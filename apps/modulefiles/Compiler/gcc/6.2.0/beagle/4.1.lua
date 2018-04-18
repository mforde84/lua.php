-- -*- lua -*-


------------------------------------------------------------------------
-- Beagle 4.1
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
whatis("Name:        Beagle")
whatis("Version:     4.1")
whatis("Category:    toolset")
whatis("Description: Beagle is a software package that performs genotype calling, genotype phasing, imputation of ungenotyped markers, and identity-by-descent segment detection.")
whatis("URL:         https://faculty.washington.edu/browning/beagle/beagle.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Beagle


Product Description
-------------------
Beagle is a software package that performs genotype calling, genotype phasing, imputation 
of ungenotyped markers, and identity-by-descent segment detection.

Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://faculty.washington.edu/browning/beagle/beagle.html

]])


-- PATH
prepend_path('PATH', installDir)


