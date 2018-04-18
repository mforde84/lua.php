-- -*- lua -*-


------------------------------------------------------------------------
-- kneaddata 0.6.1
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
whatis("Name:        kneaddata")
whatis("Version:     0.6.1")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://huttenhower.sph.harvard.edu/kneaddata")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use kneaddata 0.6.1


Product Description
-------------------
KneadData is a tool designed to perform quality control on metagenomic sequencing 
data, especially data from microbiome experiments. In these experiments, samples 
are typically taken from a host in hopes of learning something about the microbial 
community on the host. However, metagenomic sequencing data from such experiments 
will often contain a high ratio of host to bacterial reads. This tool aims to 
perform principled in silico separation of bacterial reads from these "contaminant" 
reads, be they from the host, from bacterial 16S sequences, or other user-defined 
sources.


Dependencies
------------
gcc/6.2.0
python/3.5.3
java-jdk/1.8.0_92
trimmomatic/0.36
bowtie2/2.3.0


Documentation
-------------
Online documentation is available at:

http://www.vicbioinformatics.com/nesoni-cookbook/

]])

-- PREREQUISITE
load("python/3.5.3")
load("java-jdk/1.8.0_92")
load("trimmomatic/0.36")
load("bowtie2/2.3.0")

-- PATH
