-- -*- lua -*-


------------------------------------------------------------------------
-- DAP v1.0.0
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
whatis("Name:        DAP")
whatis("Version:     1.0.0")
whatis("Category:    eQTL")
whatis("Description: Suite of statistical methods to perform genetic association analysis integrating genomic annotations.")
whatis("URL:         https://github.com/xqwen/dap")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use DAP 1.0.0


Product Description
-------------------
DAP is a suite of statistical methods to perform genetic association analysis 
integrating genomic annotations. These methods are designed to perform rigorous 
enrichment analysis, QTL discovery and multi-SNP fine-mapping analysis in a 
highly efficient way. The statistical model and the key algorithm, Deterministic 
Approximation of Posteriors (DAP).


Dependencies
------------
gcc/6.2.0
gsl/2.3
boost/1.61.0
zlib/1.2.8
bzip2/1.0.6

Documentation
-------------
Online documentation is available at:

https://github.com/xqwen/dap

]])


-- PREREQUISITES
load("gsl/2.3")
load("boost/1.61.0")
load("zlib/1.2.8")
load("bzip2/1.0.6")

-- PATH
prepend_path('PATH', installDir)
