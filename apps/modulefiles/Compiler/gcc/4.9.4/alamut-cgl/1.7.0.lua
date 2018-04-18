-- -*- lua -*-


------------------------------------------------------------------------
-- alamut-batch 1.7.0
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)


-- Whatis Message
whatis("Name:        alamut-cgl")
whatis("Version:     1.7.0")
whatis("Category:    annotation")
whatis("Description: High-throughput annotation software")
whatis("URL:         http://www.interactive-biosoftware.com/alamut-batch/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use alamut-cgl 1.7.0.


Product Description
-------------------
Designed for intensive variant analysis workflows (gene panels or 
exomes), Alamut Batch enriches raw NGS variants with dozens of attributes 
including effects on human genes, detailed information on known variants 
and mutations, predictions on the pathogenic status of missense variations 
as well as splicing predictions.


Dependencies
------------
gcc/4.9.4
perl/5.18.4
python/2.7.6


Documentation
-------------
Online documentation is available at:

http://www.interactive-biosoftware.com/alamut-batch/documentation/

]])


-- Prerequisites
load("python/2.7.6")
load("perl/5.18.4")


-- Executables
prepend_path('PATH', installDir)

