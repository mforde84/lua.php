-- -*- lua -*-


------------------------------------------------------------------------
-- qiime2
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
whatis("Name:        qiime2")
whatis("Version:     2017.7.0")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://qiime2.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use qiime2


Product Description
-------------------
QIIME 2 is a powerful, extensible, and decentralized microbiome analysis 
package with a focus on data and analysis transparency. QIIME 2 enables 
researchers to start an analysis with raw DNA sequence data and finish 
with publication-quality figures and statistical results.

Key features:

    * Integrated and automatic tracking of data provenance
    * Semantic type system
    * Plugin system for extending microbiome analysis functionality
    * Support for multiple types of user interfaces (e.g. API, command 
      line, graphical)


Dependencies
------------
gcc/6.2.0
miniconda3/4.3.21


Documentation
-------------
Online documentation is available at:

https://docs.qiime2.org/2017.7/tutorials/

]])


-- Prerequisites
load("miniconda3/4.3.21")

execute {cmd="source activate qiime2-2017.7",modeA={"load"}}
execute {cmd="source deactivate qiime2-2017.7",modeA={"unload"}}
