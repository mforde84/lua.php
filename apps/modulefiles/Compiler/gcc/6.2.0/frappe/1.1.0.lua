------------------------------------------------------------------------
-- frappe 1.1.0
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
whatis("Name:        frappe")
whatis("Version:     1.1.0")
whatis("Category:    haplotyping")
whatis("Description: frappe is a frequentist approach for estimating individual ancestry proportion (see Tang et al. 2005).")
whatis("URL:         http://cab.spbu.ru/software/spades/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use FRAPPE 1.1.0.


Product Description
-------------------
FRAPPE -- frappe is a program for estimating individual ancestry and 
admixture proportions using high-density SNP data. The statistical 
method is described in Tang et al. 2005.   


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://med.stanford.edu/tanglab/software/frappeReadme.pdf

]])


-- PATH
prepend_path('PATH', installDir)

