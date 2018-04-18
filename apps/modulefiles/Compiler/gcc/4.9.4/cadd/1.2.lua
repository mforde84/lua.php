-- -*- lua -*-


------------------------------------------------------------------------
-- CADD 1.2
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        CADD")
whatis("Version:     1.2")
whatis("Category:    variants")
whatis("Description: Tool for scoring the deleteriousness of single nucleotide variants as well as insertion/deletions variants.")
whatis("URL:         http://cadd.gs.washington.edu/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use CADD 1.2.


Product Description
-------------------
CADD is a tool for scoring the deleteriousness of single nucleotide 
variants as well as insertion/deletions variants in the human genome.

While many variant annotation and scoring tools are around, most 
annotations tend to exploit a single information type (e.g. 
conservation) and/or are restricted in scope (e.g. to missense 
changes). Thus, a broadly applicable metric that objectively weights 
and integrates diverse information is needed. Combined Annotation 
Dependent Depletion (CADD) is a framework that integrates multiple 
annotations into one metric by contrasting variants that survived 
natural selection with simulated mutations.

C-scores strongly correlate with allelic diversity, pathogenicity 
of both coding and non-coding variants, and experimentally measured 
regulatory effects, and also highly rank causal variants within 
individual genome sequences. Finally, C-scores of complex 
trait-associated variants from genome-wide association studies (GWAS) 
are significantly higher than matched controls and correlate with 
study sample size, likely reflecting the increased accuracy of larger 
GWAS.

CADD can quantitatively prioritize functional, deleterious, and 
disease causal variants across a wide range of functional categories, 
effect sizes and genetic architectures and can be used prioritize 
causal variation in both research and clinical settings.


Dependencies
------------
gcc/4.9.4
perl/5.18.4
python/2.7.6
ensembl-tools/76
htslib/1.3.2


Documentation
-------------
Online documentation is available at:

http://cadd.gs.washington.edu/info

]])


-- Prerequisites
load("perl/5.18.4")
load("python/2.7.6")
load("htslib/1.3.2")
load("ensembl-tools/76")


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- PERL5LIB
prepend_path('PERL5LIB', pathJoin(installDir,"Plugins"))
