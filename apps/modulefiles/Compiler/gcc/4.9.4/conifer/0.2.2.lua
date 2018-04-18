-- -*- lua -*-


------------------------------------------------------------------------
-- CoNIFER 0.2.2
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        CoNIFER")
whatis("Version:     0.2.2")
whatis("Category:    variants")
whatis("Description: Uses exome sequencing data to find copy number variants (CNVs) and genotype the copy-number of duplicated genes.")
whatis("URL:         http://conifer.sourceforge.net/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use CoNIFER 0.2.2


Product Description
-------------------
CoNIFER uses exome sequencing data to find copy number variants (CNVs) 
and genotype the copy-number of duplicated genes. As exome capture 
reactions are subject to strong and systematic capture biases between 
sample batches, we implemented singular value decomposition (SVD) to 
eliminate these biases in exome data. CoNIFER offers the ability to 
mix exome sequence from multiple experimental runs by eliminating 
batch biases. Together with a short read aligner such as mrsFAST which 
can align reads to multiple locations, CoNIFER can robustly detect rare 
CNVs and estimate the copy number of duplicated genes up to ~8 copies 
with current exome capture kits.


Dependencies
------------
gcc/4.9.4
python/2.7.6


Documentation
-------------
Online documentation is available at:

http://conifer.sourceforge.net/quickstart.html

]])


-- Prerequisites
load("python/2.7.6")


-- Executables
prepend_path('PATH', installDir)

