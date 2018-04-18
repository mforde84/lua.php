-- -*- lua -*-


------------------------------------------------------------------------
-- RSEM 1.3.0
-- Mike Jarsulic
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
whatis("Name:        RSEM")
whatis("Version:     1.3.0")
whatis("Category:    rna-seq")
whatis("Description: Estimate gene and isoform expression levels from RNA-Seq data.")
whatis("URL:         https://deweylab.github.io/RSEM/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use RSEM 1.3.0


Product Description
-------------------
RSEM is a software package for estimating gene and isoform expression 
levels from RNA-Seq data. The RSEM package provides an user-friendly 
interface, supports threads for parallel computation of the EM 
algorithm, single-end and paired-end read data, quality scores, 
variable-length reads and RSPD estimation. In addition, it provides 
posterior mean and 95% credibility interval estimates for expression 
levels. For visualization, It can generate BAM and Wiggle files in both 
transcript-coordinate and genomic-coordinate. Genomic-coordinate files 
can be visualized by both UCSC Genome browser and Broad Institute's 
Integrative Genomics Viewer (IGV). Transcript-coordinate files can be 
visualized by IGV. RSEM also has its own scripts to generate transcript 
read depth plots in pdf format. The unique feature of RSEM is, the read 
depth plots can be stacked, with read depth contributed to unique reads 
shown in black and contributed to multi-reads shown in red. In addition, 
models learned from data can also be visualized. Last but not least, 
RSEM contains a simulator.


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

https://deweylab.github.io/RSEM/README.html

]])


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"bin/samtools-1.3"))

