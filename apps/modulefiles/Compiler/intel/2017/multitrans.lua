-- -*- lua -*-


------------------------------------------------------------------------
-- MultiTrans
-- Tony Aburaad
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
whatis("Name:        MultiTrans")
whatis("Version:     n/a")
whatis("Category:    gwas")
whatis("Description: MultiTrans is an efficient and accurate multiple testing correction approach for linear mixed models.")
whatis("URL:         http://genetics.cs.ucla.edu/multiTrans/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Multitrans.


Product Description
-------------------
MultiTrans is an efficient and accurate multiple testing correction 
approach for linear mixed models. It performs a unique transformation 
of genotype data to account for genetic relatedness and heritability 
under linear mixed models, as well as to efficiently utilize the 
multivariate normal distribution.


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

http://genetics.cs.ucla.edu/multiTrans/install.html

]])



--MODULE
load("slide/1.0.4")

-- PATH
prepend_path('PATH', installDir)


