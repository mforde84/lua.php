-- -*- lua -*-


------------------------------------------------------------------------
-- QTLtools 1.1
-- Mike Jarsulic
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
whatis("Name:        QTLtools")
whatis("Version:     1.1")
whatis("Category:    toolkit")
whatis("Description: Toolkit for molecular QTL discovery and analysis.")
whatis("URL:         https://qtltools.github.io/qtltools/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use QTLtools 1.1.


Product Description
-------------------
QTLtools is a tool set for molecular QTL discovery and analysis. It 
allows to go from the raw sequence data to collection of molecular 
Quantitative Trait Loci (QTLs) in few easy-to-perform steps. For the 
moment, QTLtools can perform the following tasks:

  * bamstat - to check the quality of some sequence data by counting 
    the number of reads mapped to the reference genome and falling 
    within a reference annotation.
  * mbv - to ensure good match between the sequence and genotype data. 
    This is useful to detect sample mislabeling, contamination or PCR 
    amplification biases.
  * quan - to quantify exon and gene expression levels given a 
    reference annotation such as GENCODE.
  * pca - to perform Principal Component Analysis (PCA) on genotype or 
    molecular phenotype data.
  * cis - to map molecular Quantitative Trait Loci (mQTLs) in cis (i.e. 
    proximal to the phenotype). This mode extends FastQTL by including 
    two additional options: (i) to study groups of phenotypes such as 
    genes containing multiple exons or (ii) to perform conditional 
    analysis in order to discover multiple mQTLs per phenotype
  * trans - to map QTLs in trans. This can be done either using a full 
    permutation scheme or with a much quicker approximation.
  * fdensity - to measure the density of functional annotations around 
    the QTL locations. Useful to look at the degree of overlap between 
    QTLs and functional annotations.
  * fenrich - to measure how QTLs are enriched in any given functional 
    annotations.
  * rtc - to co-localize collections of QTLs with collection of GWAS hits.



Dependencies
------------
gcc/6.2.0
boost/1.55.0
R/3.3.2
htslib/1.3.2
lapack/3.7.0


Documentation
-------------
Online documentation is available at:

https://qtltools.github.io/qtltools/

]])


--Prerequisites
load("boost/1.55.0")
load("R/3.3.2")
load("htslib/1.3.2")
load("lapack/3.7.0")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"script"))
