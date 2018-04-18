-- -*- lua -*-


------------------------------------------------------------------------
-- freebayes 1.1.0
-- Qiannan Miao 
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
whatis("Name:        freebayes")
whatis("Version:     1.1.0")
whatis("Category:    ")
whatis("Description: ")
whatis("URL:         https://github.com/ekg/freebayes")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use freebayes 1.1.0.


Product Description
-------------------
FreeBayes is a Bayesian genetic variant detector designed to find small 
polymorphisms, specifically SNPs (single-nucleotide polymorphisms), 
indels (insertions and deletions), MNPs (multi-nucleotide polymorphisms), 
and complex events (composite insertion and substitution events) smaller 
than the length of a short-read sequencing alignment.


Dependencies
------------
intel/2017
xz/5.2.2
zlib/1.2.8
bzip2/1.0.6
python/2.7.13
perl/5.24.0


Documentation
-------------
Online documentation is available at:

https://github.com/ekg/freebayes

]])

-- PREREQUISITE
load("xz/5.2.2")
load("zlib/1.2.8")
load("bzip2/1.0.6")
load("python/2.7.13")
load("perl/5.24.0")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"scripts"))
