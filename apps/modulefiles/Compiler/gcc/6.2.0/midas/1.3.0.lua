-- -*- lua -*-


------------------------------------------------------------------------
-- MIDAS 1.3.0
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
whatis("Name:        MIDAS")
whatis("Version:     1.3.0")
whatis("Category:    metagenomics")
whatis("Description: Metagenomic Intra-Species Diversity Analysis System")
whatis("URL:         https://github.com/snayfach/MIDAS")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use HS-BLASTN.


Product Description
-------------------
MIDAS is an integrated pipeline that leverages >30,000 reference 
genomes to estimate bacterial species abundance and strain-level 
genomic variation, including gene content and SNPs, from shotgun 
metagnomes.


Dependencies
------------
gcc/6.2.0
python/2.7.13
bowtie/2.3.2
samtools/1.5
hs-blastn


Documentation
-------------
Online documentation is available at:

https://github.com/snayfach/MIDAS/blob/master/README.md

]])


-- Prerequisites
load("python/2.7.13")
load("bowtie/2.3.2")
load("samtools/1.5")
load("hs-blastn")


