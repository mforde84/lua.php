-- -*- lua -*-


------------------------------------------------------------------------
-- Genome MuSiC 0.4
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
whatis("Name:        Genome MuSiC")
whatis("Version:     0.5")
whatis("Category:    toolkit")
whatis("Description: Set of tools aimed at discovering the significance of somatic mutations found within a given cohort of cancer samples.")
whatis("URL:         http://gmt.genome.wustl.edu/packages/genome-music/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Genome MuSiC 0.4.


Product Description
-------------------
The MuSiC suite is a set of tools aimed at discovering the significance 
of somatic mutations found within a given cohort of cancer samples, and 
with respect to a variety of external data sources. It consists of 
downstream analysis tools that can:

    * Apply statistical methods to identify significantly mutated genes
    * Highlight significantly altered pathways
    * Investigate the proximity of amino acid mutations in the same gene
    * Search for gene-based or site-based correlations to mutations and 
      relationships between mutations themselves
    * Correlate mutations to clinical features, using typical correlation 
      measures, and generalized linear models
    * Cross-reference findings with relevant databases such as Pfam, 
      COSMIC, and OMIM
    * Generate typical visualizations like Kaplan-Meier survival estimates, 
      and mutation status matrices

In an attempt to remain versatile and powerful, MuSiC incorporates a 
command-line interface with minimal inputs, described as follows:

    * Coverage: Mapped reads from a group of tumor/normal sample pairs in 
      BAM format. UCSC WIG files describing coverage may be used if BAMs 
      are unavailable.
    * Variants: The predicted or validated SNVs and indels from the cohort 
      in TCGA MAF format (VCF support coming soon).
    * Regions of Interest: A set of regions the user is interested in 
      studying, typically the boundaries of coding regions, but can be 
      expanded to non-coding RNA, conserved regions, whole genome, 
      chromosome bands, etc.
    * Clinical data: Any relevant clinical data segregated as qualitative 
      and quantitative types (to apply appropriate statistical methods).
    * Reference sequence: Must correspond to the BAM/WIG files used. HG18, 
      GRCh37, non-human genomes, microbiome, squished transcriptome, etc.



Dependencies
------------
gcc/6.2.0
perl/5.24.0
R/3.3.2
calc-roi-covg



Documentation
-------------
Online documentation is available at:

http://gmt.genome.wustl.edu/packages/genome-music/documentation.html

]])


--Prerequisites
load("perl/5.24.0")
load("R/3.3.2")
load("calc-roi-covg")


