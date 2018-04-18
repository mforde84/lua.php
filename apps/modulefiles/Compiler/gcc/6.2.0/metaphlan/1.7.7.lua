-- -*- lua -*-


------------------------------------------------------------------------
-- metaphlan 1.7.7
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
whatis("Name:        metaphlan")
whatis("Version:     1.7.7")
whatis("Category:    analysis")
whatis("Description: Computational tool for profiling the composition of microbial communities.")
whatis("URL:         http://huttenhower.sph.harvard.edu/metaphlan")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use metaphlan 1.7.7


Product Description
-------------------
MetaPhlAn is a computational tool for profiling the composition of microbial communities from 
metagenomic shotgun sequencing data. MetaPhlAn relies on unique clade-specific marker genes 
identified from 3,000 reference genomes, allowing:

    * up to 25,000 reads-per-second (on one CPU) analysis speed (orders of magnitude faster 
      compared to existing methods);
    * unambiguous taxonomic assignments as the MetaPhlAn markers are clade-specific;
    * accurate estimation of organismal relative abundance (in terms of number of cells rather 
      than fraction of reads);
    * species-level resolution for bacterial and archaeal organisms;
    * extensive validation of the profiling accuracy on several synthetic datasets and on 
      thousands of real metagenomes.


Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

http://huttenhower.sph.harvard.edu/metaphlan

]])


-- Prerequisites
load("python/2.7.13")


-- Executables
prepend_path('PATH', installDir)

prepend_path('mpa_dir', installDir)

