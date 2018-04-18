-- -*- lua -*-


------------------------------------------------------------------------
-- fastStructure 1.0-4
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
whatis("Name:        fastStructure")
whatis("Version:     1.0-4")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://rajanil.github.io/fastStructure/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use fastStructure 1.0-4


Product Description
-------------------
fastStructure is an algorithm for inferring population structure from 
large SNP genotype data. It is based on a variational Bayesian 
framework for posterior inference and is written in Python2.x. Here, 
we summarize how to setup this software package, compile the C and 
Cython scripts and run the algorithm on a test simulated genotype 
dataset.


Dependencies
------------
gcc/6.2.0
python/2.7.13
gsl/2.3


Documentation
-------------
Online documentation is available at:

http://rajanil.github.io/fastStructure/

]])

-- PREREQUISITE
load("python/2.7.13")
load("gsl/2.3")

-- PATH
prepend_path('PATH', pathJoin(installDir))
