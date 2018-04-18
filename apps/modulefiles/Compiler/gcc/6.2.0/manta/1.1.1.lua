-- -*- lua -*-


------------------------------------------------------------------------
-- manta 1.1.1
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
whatis("Name:        manta")
whatis("Version:     1.1.1")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/Illumina/manta/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use manta 1.1.1


Product Description
-------------------
Manta calls structural variants (SVs) and indels from mapped paired-end 
sequencing reads. It is optimized for analysis of germline variation 
in small sets of individuals and somatic variation in tumor/normal 
sample pairs. Manta discovers, assembles and scores large-scale SVs, 
medium-sized indels and large insertions within a single efficient 
workflow. The method is designed for rapid analysis on standard compute 
hardware: NA12878 at 50x genomic coverage is analyzed in less than 20 
minutes on a 20 core server, and most WGS tumor/normal analyses can be 
completed within 2 hours. Manta combines paired and split-read evidence 
during SV discovery and scoring to improve accuracy, but does not require 
split-reads or successful breakpoint assemblies to report a variant in 
cases where there is strong evidence otherwise. It provides scoring models 
for germline variants in small sets of diploid samples and somatic variants 
in matched tumor/normal sample pairs. There is experimental support for 
analysis of unmatched tumor samples as well (see details below). Manta 
accepts input read mappings from BAM or CRAM files and reports all SV and 
indel inferences in VCF 4.1 format.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8
python/2.7.13


Documentation
-------------
Online documentation is available at:

https://github.com/Illumina/manta/tree/master/docs/userGuide

]])

-- PREREQUISITE
load("zlib/1.2.8")
load("python/2.7.13")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PYTHONPATH', pathJoin(installDir,"lib/python"))

