-- -*- lua -*-


------------------------------------------------------------------------
-- GCTA 1.26.0
-- Tony Aburaad
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
whatis("Name:        GCTA")
whatis("Version:     1.26.0")
whatis("Category:    toolset")
whatis("Description: Estimate the proportion of phenotypic variance explained by genome- or chromosome-wide SNPs for complex traits ")
whatis("URL:         http://cnsgenomics.com/software/gcta/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use GCTA


Product Description
-------------------
GCTA (Genome-wide Complex Trait Analysis) was originally designed to 
estimate the proportion of phenotypic variance explained by genome- 
or chromosome-wide SNPs for complex traits (the GREML method), and 
has subsequently extended for many other analyses to better understand 
the genetic architecture of complex traits. GCTA currently supports 
the following functionalities: 

 * Estimate the genetic relationship from genome-wide SNPs;
 * Estimate the inbreeding coefficient from genome-wide SNPs;
 * Estimate the variance explained by all the autosomal SNPs;
 * Partition the genetic variance onto individual chromosomes;
 * Estimate the genetic variance associated with the X-chromosome;
 * Test the effect of dosage compensation on genetic variance on the 
   X-chromosome;
 * Predict the genome-wide additive genetic effects for individual 
   subjects and for individual SNPs;
 * Estimate the LD structure encompassing a list of target SNPs;
 * Simulate GWAS data based upon the observed genotype data;
 * Convert Illumina raw genotype data into PLINK format;
 * Conditional & joint analysis of GWAS summary statistics without 
   individual level genotype data
 * Estimating the genetic correlation between two traits (diseases) 
   using SNP data
 * Mixed linear model association analysis


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://cnsgenomics.com/software/gcta/tutorial.html

]])


-- PATH
prepend_path('PATH', installDir)


