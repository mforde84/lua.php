-- -*- lua -*-


------------------------------------------------------------------------
-- bismark 0.18.2
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
whatis("Name:        Bismark")
whatis("Version:     0.18.2")
whatis("Category:    mapping")
whatis("Description: A tool to map bisulfite converted sequence reads and determine cytosine methylation states.")
whatis("URL:         https://www.bioinformatics.babraham.ac.uk/projects/bismark/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Bismark 0.18.2


Product Description
-------------------
Bismark is a program to map bisulfite treated sequencing reads to a 
genome of interest and perform methylation calls in a single step. 
The output can be easily imported into a genome viewer, such as SeqMonk, 
and enables a researcher to analyse the methylation levels of their 
samples straight away. It's main features are:

    * Bisulfite mapping and methylation calling in one single step
    * Supports single-end and paired-end read alignments
    * Supports ungapped and gapped alignments
    * Alignment seed length, number of mismatches etc. are adjustable
    * Output discriminates between cytosine methylation in CpG, CHG and CHH context


Dependencies
------------
gcc/6.2.0
perl/5.24.0
bowtie2/2.3.0
samtools/1.3.1


Documentation
-------------
Online documentation is available at:

https://rawgit.com/FelixKrueger/Bismark/master/Docs/Bismark_User_Guide.html

]])


-- Prerequisites
load("perl/5.24.0")
load("bowtie2/2.3.0")
load("samtools/1.3.1")


-- Executables
prepend_path('PATH', installDir)


