-- -*- lua -*-


------------------------------------------------------------------------
-- prada 1.1
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
whatis("Name:        prada")
whatis("Version:     1.1")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://bioinformatics.mdanderson.org/main/PRADA:Overview#PRADA")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use prada 1.1


Product Description
-------------------
Massively parallel sequencing of cDNA reverse transcribed from RNA (RNASeq) provides 
an accurate estimate of the quantity and composition of mRNAs. To characterize the 
transcriptome through the analysis of RNA-seq data, we developed PRADA. PRADA focuses 
on the processing and analysis of gene expression estimates, supervised and 
unsupervised gene fusion identification, and supervised intragenic deletion 
identification. The BAM files generated by the pipeline are readily compatible with 
different tools for mutation calling and to obtain read counts for further downstream 
analysis.


Dependencies
------------
gcc/6.2.0
python/2.7.13


Documentation
-------------
Online documentation is available at:

http://bioinformatics.mdanderson.org/main/PRADA:Overview#PRADA

]])

-- PREREQUISITE
load("python/2.7.13")
load("R/3.4.1")


-- PATH
prepend_path('PATH', pathJoin(installDir))
