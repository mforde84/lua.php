-- -*- lua -*-


------------------------------------------------------------------------
-- express 1.5.1
-- Qiannan Miao 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-5.4.0"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        express")
whatis("Version:     1.5.1")
whatis("Category:    ")
whatis("Description: ")
whatis("URL:         https://pachterlab.github.io/eXpress/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use express 1.5.1 


Product Description
-------------------
eXpress is a streaming tool for quantifying the abundances of a set 
of target sequences from sampled subsequences. Example applications 
include transcript-level RNA-Seq quantification, 
allele-specific/haplotype expression analysis (from RNA-Seq), 
transcription factor binding quantification in ChIP-Seq, and 
analysis of metagenomic data. It is based on an online-EM algorithm 
that results in space (memory) requirements proportional to the 
total size of the target sequences and time requirements that are 
proportional to the number of sampled fragments. Thus, in 
applications such as RNA-Seq, eXpress can accurately quantify much 
larger samples than other currently available tools greatly reducing 
computing infrastructure requirements. eXpress can be used to build 
lightweight high-throughput sequencing processing pipelines when 
coupled with a streaming aligner (such as Bowtie), as output can be 
piped directly into eXpress, effectively eliminating the need to 
store read alignments in memory or on disk.


Dependencies
------------
gcc/5.4.0
boost/1.61.0
zlib/1.2.8
bamtools/2.4.1


Documentation
-------------
Online documentation is available at:

https://pachterlab.github.io/eXpress/manual.html

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


