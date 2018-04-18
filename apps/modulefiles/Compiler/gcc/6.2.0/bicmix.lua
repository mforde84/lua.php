-- -*- lua -*-


------------------------------------------------------------------------
-- BicMix
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
whatis("Name:        BicMix")
whatis("Version:     N/A")
whatis("Category:    statistics")
whatis("Description: Bayesian biclustering via a doubly-sparse latent factor model.")
whatis("URL:         https://www.cs.princeton.edu/~bee/software.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use BicMix


Product Description
-------------------
BicMix finds two sparse low dimensional matrices that capture sparse 
covariance structure in the response matrix.


Dependencies
------------
gcc/6.2.0
gsl/2.3   3) eigen/3.3.2   4) boost/1.61.0

Documentation
-------------
Online documentation is available at:

https://arxiv.org/abs/1411.1997

]])


-- PREREQUISITES
load("gsl/2.3")
load("eigen/3.3.2")
load("boost/1.61.0")
load("R/3.4.1")

-- PATH
prepend_path('PATH', installDir)


