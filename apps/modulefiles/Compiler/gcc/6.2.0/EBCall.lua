-- -*- lua -*-


------------------------------------------------------------------------
-- EBCall
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
whatis("Name:        EBCall")
whatis("Version:     n/a")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/friend1ws/EBCall")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use EBCall


Product Description
-------------------
EBCall is a software package for somatic mutation detection (including InDels). 
EBCall uses not only paired tumor/normal sequence data of a target sample, 
but also multiple non-paired normal reference samples for evaluating distribution 
of sequencing errors, which leads to an accurate mutaiton detection even in case 
of low sequencing depths and low allele frequencies.


Dependencies
------------
gcc/6.2.0
R/3.3.2
samtools/0.1.18
perl/5.24.0


Documentation
-------------
Online documentation is available at:

https://github.com/friend1ws/EBCall


]])


-- Prerequisites
load("R/3.3.2")
load("samtools/0.1.18")
load("perl/5.24.0")


-- PATH
prepend_path('PATH', pathJoin(installDir))


