-- -*- lua -*-


------------------------------------------------------------------------
-- WASP 0.2.1
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
whatis("Name:        WASP")
whatis("Version:     0.2.1")
whatis("Category:    mapping")
whatis("Description: Allele-specific pipeline for unbiased read mapping and molecular QTL discovery.")
whatis("URL:         http://bowtie-bio.sourceforge.net/index.shtml")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use WASP 0.2.1.


Product Description
-------------------
WASP is a suite of tools for unbiased allele-specific read mapping 
and discovery of molecular QTLs

WASP has two parts, which can be used independently of each other:

   * Read filtering tools that correct for biases in allele-specific 
     mapping.
   * A Combined Haplotype Test (CHT) that tests for genetic association 
     with a molecular trait using counts of mapped and allele-specific 
     reads.


Dependencies
------------
intel/2017
python/2.7.13
hdf5/1.10.0


Documentation
-------------
Online documentation is available at:

http://biorxiv.org/content/early/2014/11/07/011221

]])


-- Prerequisites
load("python/2.7.13")
load("hdf5/1.10.0")


-- PATH
prepend_path('PATH', pathJoin(installDir,"CHT"))
prepend_path('PATH', pathJoin(installDir,"mapping"))
prepend_path('PATH', pathJoin(installDir,"snp2h5"))
