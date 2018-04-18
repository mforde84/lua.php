-- -*- lua -*-


------------------------------------------------------------------------
-- XWAS 2.0
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
whatis("Name:        XWAS")
whatis("Version:     2.0")
whatis("Category:    toolkit")
whatis("Description: Toolkit for the analysis of the X chromosome in association analyses and similar studies.")
whatis("URL:         http://keinanlab.cb.bscb.cornell.edu/content/xwas")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use XWAS 2.0


Product Description
-------------------
XWAS (chromosome X-Wide Analysis toolSet) is a software suite for 
the analysis of the X chromosome in association analyses and similar 
studies.

The X chromosome plays an important role in complex human traits and 
diseases, especially those with sexually dimorphic characteristics. 
Special attention needs to be given to analysis of X due to its unique 
inheritance pattern and X-inactivation. These lead to several 
analytical complications that have resulted in the majority of 
genome-wide association studies (GWAS) to date having excluded the X 
chromosome or otherwise mishandled it by applying the same tools 
designed for non-sex chromosomes. With XWAS, we hope to provide the 
tools and incentive to incorporate the X chromosome into GWAS, hence 
enabling discoveries of novel loci implicated in many diseases and in 
their sexual dimorphism.


Dependencies
------------
intel/2017
zlib/1.2.8
lapack/3.7.0
R/3.3.2

]])


-- Prerequisites
load("zlib/1.2.8")
load("lapack/3.7.0")
load("R/3.3.2")


-- Executables
prepend_path('PATH', installDir)



