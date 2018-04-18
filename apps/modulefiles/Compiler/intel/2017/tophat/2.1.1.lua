-- -*- lua -*-


------------------------------------------------------------------------
-- TopHat 2.1.1
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
whatis("Name:        TopHat")
whatis("Version:     2.1.1")
whatis("Category:    mapping")
whatis("Description: Fast splice junction mapper for RNA-Seq reads.")
whatis("URL:         https://ccb.jhu.edu/software/tophat/index.shtml")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use TopHat 2.1.1.


Product Description
-------------------
TopHat is a fast splice junction mapper for RNA-Seq reads. It aligns RNA-Seq reads to mammalian-sized genomes using the ultra high-throughput short read aligner Bowtie, and then analyzes the mapping results to identify splice junctions between exons. 


Dependencies
------------
intel/2017
boost/1.61.0
bowtie2/2.2.9


Documentation
-------------
Online documentation is available at:

https://ccb.jhu.edu/software/tophat/manual.shtml

]])


-- Prerequisites
load("boost/1.61.0")
load("bowtie2/2.2.9")
load("python/2.7.13")
load("bowtie/1.2.1.1")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
