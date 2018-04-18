-- -*- lua -*-


------------------------------------------------------------------------
-- MetaBAT 0.32.5
-- Mike Jarsulic 
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
whatis("Name:        MetaBAT")
whatis("Version:     0.32.5")
whatis("Category:    metagenomics")
whatis("Description: Tool for reconstructing single genomes from complex microbial communities.")
whatis("URL:         https://bitbucket.org/berkeleylab/metabat")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use MetaBAT 0.32.5


Product Description
-------------------
Grouping large genomic fragments assembled from shotgun metagenomic 
sequences to deconvolute complex microbial communities, or metagenome 
binning, enables the study of individual organisms and their 
interactions. MetaBAT integrates empirical probabilistic distances of 
genome abundance and tetranucleotide frequency. Tested on both synthetic 
and real metagenome datasets, MetaBAT outperforms alternative methods in 
both accuracy and computational efficiency. Applying MetaBAT to an 
assembly from 1,704 human gut samples formed 1,634 genome bins (>200kb) 
in 3 hours, where 621 genome bins are >50% complete with <5% 
contamination from other species. Further analysis shows that the 
quality of these genome bins approaches manually curated genomes. 


Dependencies
------------
gcc/6.2.0
boost/1.55.0
python/2.7.13
zlib/1.2.8


Documentation
-------------
Online documentation is available at:

https://bitbucket.org/berkeleylab/metabat/overview

]])


-- Prerequisites
load("python/2.7.13")
load("boost/1.55.0")
load("zlib/1.2.8")


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


