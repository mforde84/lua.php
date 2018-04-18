-- -*- lua -*-


------------------------------------------------------------------------
-- Laser 2.04
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
whatis("Name:        Laser")
whatis("Version:     2.04")
whatis("Category:    ")
whatis("Description: ")
whatis("URL:         http://csg.sph.umich.edu/chaolong/LASER/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Laser 2.04.


Product Description
-------------------
LASER is a program to estimate individual ancestry by directly analyzing 
shotgun sequence reads without calling genotypes. LASER uses principal 
components analysis (PCA) and Procrustes analysis to analyze sequence 
reads of each sample and place the sample into a reference PCA space 
constructed using genotypes of a set of reference individuals. With an 
appropriate reference panel, the estimated coordinates of the sequence 
samples reflect their ancestral background and can be used to correct 
for population stratification in association studies. LASER can accurately 
estimate ancestry even with modest amounts of data, such as the off-target 
sequence data generated by targeted sequencing experiments.

In version 2.0 or later, the software package includes a new program TRACE 
for tracing an individual's genetic ancestry based on genotype data. TRACE 
follows the same analysis framework as LASER and can accurately place study 
samples into a reference ancestry space using a relatively small number of 
genotypes. When using the same reference panel, LASER and TRACE can place 
sequenced and genotyped samples into the same ancestry space.

LASER can also perform standard PCA on genotype data to explore population 
structure and to create the reference ancestry space. Different options to 
compute PC scores and PC loadings have been implemented in the LASER program 
(version 2.01 or later).


Dependencies
------------
gcc/6.2.0
lapack/3.7.0
armadillo/7.800.2
openblas/0.2.19
gsl/2.3
pcre/8.39
zlib/1.2.8
bzip2/1.0.6
python/2.7.13


Documentation
-------------
Online documentation is available at:

https://www.ncbi.nlm.nih.gov/pubmed/26708335

]])

-- PREREQUISITE
load("lapack/3.7.0")
load("armadillo/7.800.2")
load("openblas/0.2.19")
load("gsl/2.3")
load("pcre/8.39")
load("zlib/1.2.8")
load("bzip2/1.0.6")
load("python/2.7.13")

-- PATH
prepend_path('PATH', installDir)
