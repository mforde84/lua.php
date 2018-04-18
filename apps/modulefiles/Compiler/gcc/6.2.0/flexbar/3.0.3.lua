-- -*- lua -*-


------------------------------------------------------------------------
-- flexbar 3.0.3
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
whatis("Name:        flexbar")
whatis("Version:     3.0.3")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/seqan/flexbar")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use flexbar 3.0.3.


Product Description
-------------------
The program Flexbar preprocesses high-throughput sequencing data 
efficiently. It demultiplexes barcoded runs and removes adapter 
sequences. Moreover, trimming and filtering features are provided. 
Flexbar increases read mapping rates and improves genome as well 
as transcriptome assemblies. It supports next-generation sequencing 
data in fasta and fastq format, e.g. from Roche 454 and the Illumina 
platform.


Dependencies
------------
gcc/6.2.0
bzip2/1.0.6
zlib/1.2.8
tbb/2017


Documentation
-------------
Online documentation is available at:

https://www.ncbi.nlm.nih.gov/pubmed/26708335

]])

-- PREREQUISITE
load("zlib/1.2.8")
load("bzip2/1.0.6")
load("tbb/2017")

-- PATH
prepend_path('PATH', pathJoin(installDir))
