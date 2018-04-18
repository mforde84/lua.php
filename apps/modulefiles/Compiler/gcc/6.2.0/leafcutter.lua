-- -*- lua -*-


------------------------------------------------------------------------
-- leafcutter
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
whatis("Name:        leafcutter")
whatis("Version:     n/a")
whatis("Category:    rna-splicing")
whatis("Description: Annotation-free quantification of RNA splicing.")
whatis("URL:         https://github.com/davidaknowles/leafcutter")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use leafcutter


Product Description
-------------------
Leafcutter quantifies RNA splicing variation using short-read RNA-seq 
data. The core idea is to leverage spliced reads (reads that span an 
intron) to quantify (differential) intron usage across samples. The 
advantages of this approach include:

    * easy detection of novel introns
    * modeling of more complex splicing events than exonic PSI
    * avoiding the challenge of isoform abundance estimation
    * simple, computationally efficient algorithms scaling to 100s or 
      even 1000s of samples


Dependencies
------------
gcc/6.2.0
python/2.7.13
R/3.3.2
perl/5.24.0


Documentation
-------------
Online documentation is available at:

https://github.com/davidaknowles/leafcutter/blob/master/README.md


]])


-- Prerequisites
load("python/2.7.13")
load("R/3.3.2")
load("perl/5.24.0")


-- PATH
prepend_path('PATH', pathJoin(installDir,"clustering"))
prepend_path('PATH', pathJoin(installDir,"scripts"))


