-- -*- lua -*-


------------------------------------------------------------------------
-- sortmerna 2.0
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
whatis("Name:        sortmerna")
whatis("Version:     2.0")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/biocore/sortmerna")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use sortmerna 2.0


Product Description
-------------------
SortMeRNA is a local sequence alignment tool for filtering, mapping 
and clustering.

The core algorithm is based on approximate seeds and allows for 
sensitive analysis of NGS reads. The main application of SortMeRNA 
is filtering rRNA from metatranscriptomic data. SortMeRNA takes as 
input a file of reads (fasta or fastq format) and one or multiple 
rRNA database file(s), and sorts apart aligned and rejected reads 
into two files specified by the user. Additional applications 
include clustering and taxonomy assignation available through QIIME 
v1.9.1 (http://qiime.org). SortMeRNA works with Illumina, Ion 
Torrent and PacBio data, and can produce SAM and BLAST-like 
alignments.

Visit http://bioinfo.lifl.fr/RNA/sortmerna/ for more information.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://github.com/biocore/sortmerna


]])


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))

-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))

