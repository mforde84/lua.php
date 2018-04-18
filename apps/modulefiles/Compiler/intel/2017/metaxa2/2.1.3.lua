-- -*- lua -*-


------------------------------------------------------------------------
-- Metaxa2 2.1.3
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
whatis("Name:        Metaxa2")
whatis("Version:     2.1.3")
whatis("Category:    metagenomics")
whatis("Description: Identification and taxonomic classification of rRNA in metagenomic data.")
whatis("URL:         http://microbiology.se/software/metaxa2/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Metaxa2 2.1.3


Product Description
-------------------
A software tool for automated detection and discrimination among 
ribosomal small subunit (12S/16S/18S) sequences of archaea, bacteria, 
eukaryotes, mitochondria, and chloroplasts in metagenomes and 
environmental sequencing datasets


Dependencies
------------
intel/2017
hmmer/3.1b2
blast/2.2.24
mafft/7.310


Documentation
-------------
Online documentation is available at:

http://microbiology.se/publ/metaxa2_users_guide.pdf

]])


-- Prerequisites
load("hmmer/3.1b2")
load("blast/2.2.24")
load("mafft/7.310")


-- Executables
prepend_path('PATH', installDir)




