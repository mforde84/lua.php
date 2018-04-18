-- -*- lua -*-


------------------------------------------------------------------------
-- ngsAdmix 32
-- Qiannan Miao
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
whatis("Name:        ngsAdmix")
whatis("Version:     32")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://www.popgen.dk/software/index.php/NgsAdmix")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use ngsAdmix 32


Product Description
-------------------
ngsAdmix is a very nice tool for finding admixture proportions from NGS 
data. It is based on genotype likelihoods. It is a fancy multithreaded 
c/c++ program.


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

http://www.popgen.dk/software/index.php/NgsAdmix


]])


-- Prerequisites


-- PATH
prepend_path('PATH', pathJoin(installDir))


