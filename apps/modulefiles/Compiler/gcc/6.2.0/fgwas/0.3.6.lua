-- -*- lua -*-


------------------------------------------------------------------------
-- fgwas 0.3.6
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
whatis("Name:        fgwas")
whatis("Version:     0.3.6")
whatis("Category:    GWAS")
whatis("Description: integration of functional genomic information into a genome-wide association study (GWAS)") 
whatis("URL:         https://github.com/joepickrell/fgwas")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use fgwas 0.3.6.


Product Description
-------------------

fgwas is a command line tool for integrating functional genomic information 
into a genome-wide association study (GWAS). The basic setup is as follows: 
you have performed a GWAS or a meta-analysis of many GWAS, and have identified
tens of loci that influence the disease or trait (our approach works best if 
there are at least ~20 independent loci with p-values less than 5e-8)


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://github.com/joepickrell/fgwas

]])


-- Prerequisites

load("gsl/2.3")
load("boost/1.61.0")
load("perl/5.24.0")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))

