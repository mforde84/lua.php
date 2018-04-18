-- -*- lua -*-


------------------------------------------------------------------------
-- salmon 0.8.2
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
whatis("Name:        salmon")
whatis("Version:     0.8.2")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://combine-lab.github.io/salmon/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use salmon 0.8.2.


Product Description
-------------------
Salmon is a tool for quantifying the expression of transcripts using 
RNA-seq data. Salmon uses new algorithms (specifically, coupling the 
concept of quasi-mapping with a two-phase inference procedure) to 
provide accurate expression estimates very quickly (i.e. wicked-fast) 
and while using little memory. Salmon performs its inference using an 
expressive and realistic model of RNA-seq data that takes into account 
experimental attributes and biases commonly observed in real RNA-seq data.


Dependencies
------------
gcc/6.2.0
boost/1.55.0
tbb/2017
zlib/1.2.8
bzip2/1.0.6
xz/5.2.2


Documentation
-------------
Online documentation is available at:

http://salmon.readthedocs.io/en/latest/index.html

]])

-- PREREQUISITE
load("boost/1.55.0")
load("tbb/2017")
load("zlib/1.2.8")
load("bzip2/1.0.6")
load("xz/5.2.2")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))

prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))

