-- -*- lua -*-


------------------------------------------------------------------------
-- macs2 2.1.0
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
whatis("Name:        macs2")
whatis("Version:     2.1.0")
whatis("Category:    ")
whatis("Description: ")
whatis("URL:         https://github.com/taoliu/MACS")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use macs2 2.1.0


Product Description
-------------------
With the improvement of sequencing techniques, chromatin immunoprecipitation 
followed by high throughput sequencing (ChIP-Seq) is getting popular to study 
genome-wide protein-DNA interactions. To address the lack of powerful ChIP-Seq 
analysis method, we present a novel algorithm, named Model-based Analysis of 
ChIP-Seq (MACS), for identifying transcript factor binding sites. MACS captures 
the influence of genome complexity to evaluate the significance of enriched 
ChIP regions, and MACS improves the spatial resolution of binding sites through 
combining the information of both sequencing tag position and orientation. 
MACS can be easily used for ChIP-Seq data alone, or with control sample with 
the increase of specificity.


Dependencies
------------
intel/2017
python/2.7.13


Documentation
-------------
Online documentation is available at:

https://github.com/taoliu/MACS

]])

-- PREREQUISITE
load("python/2.7.13")

-- PATH
prepend_path('PYTHONPATH', pathJoin(installDir,"lib/python2.7/site-packages"))
prepend_path('PATH', pathJoin(installDir,"bin"))
