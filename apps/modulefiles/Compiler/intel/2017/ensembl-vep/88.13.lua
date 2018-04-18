-- -*- lua -*-


------------------------------------------------------------------------
-- Ensembl VEP
-- Qiannan Miao
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
whatis("Name:        Ensembl VEP")
whatis("Version:     88.13")
whatis("Category:    variants")
whatis("Description: Variant Effect Predictor")
whatis("URL:         http://www.ensembl.org/info/docs/tools/vep/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Ensembl VEP 88.13


Product Description
-------------------
VEP determines the effect of your variants (SNPs, insertions, deletions, 
CNVs or structural variants) on genes, transcripts, and protein sequence, 
as well as regulatory regions. Simply input the coordinates of your 
variants and the nucleotide changes to find out the:

  * genes and transcripts affected by the variants
  * location of the variants (e.g. upstream of a transcript, in coding 
    sequence, in non-coding RNA, in regulatory regions)
  * consequence of your variants on the protein sequence (e.g. stop gained, 
    missense, stop lost, frameshift)
  * known variants that match yours, and associated minor allele frequencies 
    from the 1000 Genomes Project
  * SIFT and PolyPhen scores for changes to protein sequence


Dependencies
------------
intel/2017
perl/5.24.0


Documentation
-------------
Online documentation is available at:

http://www.ensembl.org/info/docs/tools/vep/script/vep_tutorial.html


]])


-- Prerequisites
load("perl/5.24.0")


-- Libraries
prepend_path('PERL5LIB', pathJoin(installDir, "Plugins"))
prepend_path('PERL5LIB', pathJoin(installDir))
prepend_path('PERL5LIB', pathJoin(intallDir, "modules"))

-- Executables
prepend_path('PATH', installDir)
prepend_path('PATH', pathJoin(installDir, "htslib"))
