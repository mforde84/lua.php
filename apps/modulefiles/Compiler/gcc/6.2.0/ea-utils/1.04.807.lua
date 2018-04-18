-- -*- lua -*-


------------------------------------------------------------------------
-- ea-utils 1.04.807
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
whatis("Name:        ea-utils")
whatis("Version:     1.04.807")
whatis("Category:    ")
whatis("Description: Biological sequencing data processor.")
whatis("URL:         https://expressionanalysis.github.io/ea-utils/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use ea-utils 1.04.807.


Product Description
-------------------
Command-line tools for processing biological sequencing data. Barcode 
demultiplexing, adapter trimming, etc. Primarily written to support an 
Illumina based pipeline - but should work with any FASTQs.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8
gsl/2.3
bamtools/2.4.1
perl/5.24.0
R/3.3.2


Documentation
-------------
Online documentation is available at:

https://www.ncbi.nlm.nih.gov/pubmed/26708335

]])

-- PREREQUISITE
load("zlib/1.2.8")
load("gsl/2.3")
load("bamtools/2.4.1")
load("perl/5.24.0")
load("R/3.3.2")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
