-- -*- lua -*-


------------------------------------------------------------------------
-- gkm-SVM 2.0
-- Qiannan Miao
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
whatis("Name:        gkmsvm")
whatis("Version:     2.0")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://www.beerlab.org/gkmsvm/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use gkm-SVM 2.0.


Product Description
-------------------
The gkm-SVM provides implementation of a new SVM kernel method using 
gapped k-mers as features for DNA sequences and the related scripts.


Dependencies
------------
gcc/6.2.0
R/3.3.2
python/2.7.13
shogun/6.0.0


Documentation
-------------
Online documentation is available at:


]])

-- PREREQUISITE
load("R/3.3.2")
load("python/2.7.13")
load("shogun/6.0.0")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"scripts"))
