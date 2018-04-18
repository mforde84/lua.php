-- -*- lua -*-


------------------------------------------------------------------------
-- GEMMA 0.94
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
whatis("Name:        GEMMA")
whatis("Version:     0.94")
whatis("Category:    gwas")
whatis("Description: Implementation of the Genome-wide Efficient Mixed Model Association algorithm.")
whatis("URL:         http://www.xzlab.org/software.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use GEMMA 0.94.


Product Description
-------------------
GEMMA is the software implementing the Genome-wide Efficient Mixed Model 
Association algorithm for a standard linear mixed model and some of its 
close relatives for genome-wide association studies (GWAS):

* It fits a univariate linear mixed model (LMM) for marker association 
  tests with a single phenotype to account for population stratification 
  and sample structure, and for estimating the proportion of variance in 
  phenotypes explained (PVE) by typed genotypes (i.e. "chip heritability").
    
* It fits a multivariate linear mixed model (mvLMM) for testing marker 
  associations with multiple phenotypes simultaneously while controlling 
  for population stratification, and for estimating genetic correlations 
  among complex phenotypes.
    
* It fits a Bayesian sparse linear mixed model (BSLMM) using Markov chain 
  Monte Carlo (MCMC) for estimating PVE by typed genotypes, predicting 
  phenotypes, and identifying associated markers by jointly modeling all 
  markers while controlling for population structure.
   
* It estimates variance component/chip heritability, and partitions it by 
  different SNP functional categories. In particular, it uses HE regression 
  or REML AI algorithm to estimate variance components when individual-level 
  data are available. It uses MQS to estimate variance components when only 
  summary statisics are available.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://www.xzlab.org/software/GEMMAmanual.pdf

]])


-- Prerequisites
load("lapack/3.7.0")
load("gsl/2.3")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
