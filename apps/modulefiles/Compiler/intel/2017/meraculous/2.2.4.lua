-- -*- lua -*-


------------------------------------------------------------------------
-- Meraculous 2.2.4
-- Tony Aburaad
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
whatis("Name:        Meraculous")
whatis("Version:     2.2.4")
whatis("Category:    assembly")
whatis("Description: Distributed and scalable assembler for eukaryotic genomes.")
whatis("URL:         http://jgi.doe.gov/data-and-tools/meraculous/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Meraculous 2.2.4


Product Description
-------------------
Meraculous is a whole genome assembler for Next Generation Sequencing 
data geared for large genomes. It is a hybrid k-mer/read-based 
assembler that capitalizes on the high accuracy of Illumina sequence 
by eschewing an explicit error correction step which we argue to be 
redundant with the assembly process. Meraculous achieves high 
performance with large datasets by utilizing lightweight data 
structures and multi-threaded parallelization, allowing to assemble 
human-sized genomes on commodity clusters in under a day. The process 
pipeline implements a highly transparent and portable model of job 
control and monitoring where different assembly stages can be 
executed and re-executed separately or in unison on a wide variety of 
architectures.


Dependencies
------------
intel/2017
boost/1.61.0
perl/5.24.0


Documentation
-------------
Online documentation is available at:

http://1ofdmq2n8tc36m6i46scovo2e.wpengine.netdna-cdn.com/wp-content/uploads/2014/12/Manual.pdf

]])


-- Prerequisites
load("boost/1.61.0")
load("perl/5.24.0")


-- Libraries
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


