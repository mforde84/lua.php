-- -*- lua -*-


------------------------------------------------------------------------
-- anvio 2.3.2
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
whatis("Name:        anvio")
whatis("Version:     2.3.2")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://merenlab.org/software/anvio/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use anvio 2.3.2


Product Description
-------------------
Anvio is an analysis and visualization platform for 'omics data. It 
brings together many aspects of today's cutting-edge genomic, 
metagenomic, and metatranscriptomic analysis practices to address a 
wide array of needs.


Dependencies
------------
gcc/6.2.0
python/3.5.3
prodigal/2.6.3
hmmer/3.1b2
gsl/2.3
samtools/1.3.1
hdf5/1.8.18

Documentation
-------------
Online documentation is available at:

http://merenlab.org/software/anvio/

]])

-- PREREQUISITE
load("python/3.5.3")
load("prodigal/2.6.3")
load("hmmer/3.1b2")
load("gsl/2.3")
load("samtools/1.3.1")
load("hdf5/1.8.18")

