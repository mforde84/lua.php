-- -*- lua -*-


------------------------------------------------------------------------
-- fastqtl 2.0
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
whatis("Name:        fastqtl")
whatis("Version:     2.0")
whatis("Category:    mapping")
whatis("Description: QTL mapper.")
whatis("URL:         http://fastqtl.sourceforge.net/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use fastqtl 2.0.


Product Description
-------------------
FastQTL is a QTL mapper with several notable features:

  * Fast; with a permutation scheme relying on Beta approximation. No 
    need to perform millions of permutations to reach low significance
    levels, only 100 to 1,000 are needed!
  * Flexible; association testing is implemented w/o qualitative/quantitative
    covariates. Phenotypes can be internally quantile normalized.
  * User-friendly; only standard file formats are used and easy-to-use
    options implemented.
  * Cluster-friendly; parallelization is easy to set up for large
    deployment on compute clusters.


Dependencies
------------
gcc/6.2.0
boost/1.55.0
zlib/1.2.8
R/3.3.2
gsl/2.3


Documentation
-------------
Online documentation is available at:

https://www.ncbi.nlm.nih.gov/pubmed/26708335

]])

-- PREREQUISITE
load("boost/1.55.0")
load("zlib/1.2.8")
load("R/3.3.2")
load("gsl/2.3")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
