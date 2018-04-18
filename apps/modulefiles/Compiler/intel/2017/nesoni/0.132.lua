-- -*- lua -*-


------------------------------------------------------------------------
-- nesoni 0.132
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
whatis("Name:        nesoni")
whatis("Version:     0.132")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/Victorian-Bioinformatics-Consortium/nesoni")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use nesoni 0.132


Product Description
-------------------
Nesoni is a high-throughput sequencing data analysis toolset, which the Victorian 
Bioinformatics Consortium developed to cope with the flood of Illumina, 454, and 
SOLiD data being produced.

The VBC's work was largely with bacterial genomes, and the design tradeoffs in 
Nesoni reflect this.

Nesoni focusses on analysing the alignment of reads to a reference genome. Use of 
the SHRiMP and Bowtie2 read aligners is automated by nesoni. We use SHRiMP as it 
is able to detect small insertions and deletions in addition to SNPs. Output from 
other aligners may be imported in SAM format.

Nesoni can call a consensus of read alignments, taking care to indicate ambiguity. 
This can then be used in various ways: to determine the protein level changes 
resulting from SNPs and indels, to find differences between multiple strains, or 
to produce n-way comparison data suitable for phylogenetic analysis in SplitsTree4.


Dependencies
------------
intel/2017
python/2.7.13
R/3.3.2
shrimp/2.2.3
bowtie2/2.3.0
samtools/1.3.1
picard/2.8.1
freebayes/1.1.0


Documentation
-------------
Online documentation is available at:

http://www.vicbioinformatics.com/nesoni-cookbook/

]])

-- PREREQUISITE
load("python/2.7.13")
load("R/3.3.2")
load("shrimp/2.2.3")
load("bowtie2/2.3.0")
load("samtools/1.3.1")
load("picard/2.8.1")
load("freebayes/1.1.0")

-- PATH
