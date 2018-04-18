-- -*- lua -*-


------------------------------------------------------------------------
-- ssp 1.0.1
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
whatis("Name:        ssp")
whatis("Version:     1.0.1")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/rnakato/SSP")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use ssp 1.0.1


Product Description
-------------------
SSP (strand-shift profile) is a tool for quality assessment of 
ChIP-seq data without peak calling. SSP provides metrics to quantify 
the S/N for both point- and broad-source factors (NSC), and to 
estimate peak reliability based on the mapped-read distribution 
throughout a genome (Bu). SSP also provides a metric to estimate 
peak intensity and peak mode (point- or broad-source, FCS).

The outputs of SSP are displayed in PDF format and also written to 
text files.

Dependencies
------------
gcc/6.2.0
boost/1.61.0
zlib/1.2.8
samtools/1.3.1
gsl/2.3


Documentation
-------------
Online documentation is available at:

https://github.com/rnakato/SSP

]])

-- PREREQUISITE
load("boost/1.61.0")
load("zlib/1.2.8")
load("gsl/2.3")
load("samtools/1.3.1")
load("perl/5.24.0")
load("bamtools/2.4.1")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"scripts"))

