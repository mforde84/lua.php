-- -*- lua -*-


------------------------------------------------------------------------
-- LocusZoom 1.3
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
whatis("Name:        LocusZoom")
whatis("Version:     1.3")
whatis("Category:    gwas")
whatis("Description: Suite of tools to provide fast visualization of GWAS results.")
whatis("URL:         http://locuszoom.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use LocusZoom 1.3.


Product Description
-------------------
LocusZoom is designed to facilitate viewing of local association 
results together with useful information about a locus, such as the 
location and orientation of the genes it includes, linkage 
disequilibrium coefficients and local estimates of recombination 
rates. 


Dependencies
------------
gcc/6.2.0
python/2.7.13
R/3.3.2
plink/1.07
htslib/1.3.2
new_fugue/2010-06-02


Documentation
-------------
Online documentation is available at:

http://genome.sph.umich.edu/wiki/LocusZoom_Standalone

]])


-- Prerequisites
load("python/2.7.13")
load("R/3.3.2")
load("plink/1.07")
load("htslib/1.3.2")
load("new_fugue/2010-06-02")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
