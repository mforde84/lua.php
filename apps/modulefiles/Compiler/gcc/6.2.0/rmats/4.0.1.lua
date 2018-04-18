-- -*- lua -*-


------------------------------------------------------------------------
-- rmats 4.0.1
-- Martin Forde
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
whatis("Name:        rmats")
whatis("Version:     4.0.1")
whatis("Category:    splicing event quantification")
whatis("Description: Detection of splicing events, and alternate expression analysis for RNAseq.")
whatis("URL:         http://rnaseq-mats.sourceforge.net/rmats4.0.1/download.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use rmats 4.0.1


Product Description
-------------------
MATS is a computational tool to detect differential alternative splicing 
events from RNA-Seq data. The statistical model of MATS calculates the P-value 
and false discovery rate that the difference in the isoform ratio of a gene between 
two conditions exceeds a given user-defined threshold. From the RNA-Seq data, MATS 
can automatically detect and analyze alternative splicing events corresponding to 
all major types of alternative splicing patterns. MATS handles replicate RNA-Seq 
data from both paired and unpaired study design.

Usage
-----
When this module is loaded, the environmental variable RMATS_PATH is available.

Example:

$ ls -l $RMATS_PATH
total 8593
drwxr-xr-x 2 root cri-cri_server_administrators     152 Mar  7 11:33 examples
drwxr-xr-x 2 root cri-cri_server_administrators      26 Mar  7 11:32 rMATS_C
drwxr-xr-x 2 root cri-cri_server_administrators     116 Mar  7 11:32 rMATS_P
-rwxr-xr-x 1 root cri-cri_server_administrators 6877155 Mar  7 11:32 rmatspipeline.so
-rwxr-xr-x 1 root cri-cri_server_administrators   12661 Mar  7 11:32 rmats.py

$ rmats.py 
ERROR: BAM/FASTQ required. Please check b1, b2, s1 and s2.

$ python "$RMATS_PATH"/rmats.py
ERROR: BAM/FASTQ required. Please check b1, b2, s1 and s2.


Dependencies
------------
gcc/6.2.0
python/2.7.13
lapack/3.7.0
openblas/0.2.19
gsl/2.3
STAR/2.5.3a
samtools/1.6.0


Documentation
-------------
Online documentation is available at:

http://rnaseq-mats.sourceforge.net/rmats4.0.1/user_guide.htm

]])


-- PREREQUISITE
load("python/2.7.13")
load("lapack/3.7.0")
load("openblas/0.2.19")
load("gsl/2.3")
load("STAR/2.5.3a")
load("samtools/1.6.0")


-- RMATS_PATH Environment Variable
setenv("RMATS_PATH",installDir)


-- PATH
prepend_path('PATH', installDir)
prepend_path('PATH', pathJoin(installDir,"rMATS_C"))
prepend_path('PATH', pathJoin(installDir,"rMATS_P"))
