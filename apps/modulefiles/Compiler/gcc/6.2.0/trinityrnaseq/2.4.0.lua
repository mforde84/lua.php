-- -*- lua -*-


------------------------------------------------------------------------
-- Trinity 2.4.0
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
whatis("Name:        Trinity")
whatis("Version:     2.4.0")
whatis("Category:    assembly")
whatis("Description: Assembles transcript sequences from Illumina RNA-Seq data.")
whatis("URL:         https://github.com/trinityrnaseq/trinityrnaseq/wiki")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Trinity 2.4.0


Product Description
-------------------
Trinity, developed at the Broad Institute and the Hebrew University of 
Jerusalem, represents a novel method for the efficient and robust de novo 
reconstruction of transcriptomes from RNA-seq data. Trinity combines 
three independent software modules: Inchworm, Chrysalis, and Butterfly, 
applied sequentially to process large volumes of RNA-seq reads. Trinity 
partitions the sequence data into many individual de Bruijn graphs, each 
representing the transcriptional complexity at a given gene or locus, and 
then processes each graph independently to extract full-length splicing 
isoforms and to tease apart transcripts derived from paralogous genes. 
Briefly, the process works like so:

  * Inchworm assembles the RNA-seq data into the unique sequences of 
    transcripts, often generating full-length transcripts for a dominant 
    isoform, but then reports just the unique portions of alternatively 
    spliced transcripts.

  * Chrysalis clusters the Inchworm contigs into clusters and constructs 
    complete de Bruijn graphs for each cluster. Each cluster represents the 
    full transcriptonal complexity for a given gene (or sets of genes that 
    share sequences in common). Chrysalis then partitions the full read set 
    among these disjoint graphs.

  * Butterfly then processes the individual graphs in parallel, tracing the 
    paths that reads and pairs of reads take within the graph, ultimately 
    reporting full-length transcripts for alternatively spliced isoforms, 
    and teasing apart transcripts that corresponds to paralogous genes.



Dependencies
------------
gcc/6.2.0
perl/5.24.0
bowtie/1.2.0
bowtie2/2.3.0
java-jdk/1.8.0_92
samtools/1.3.1
RSEM/1.3.0


Documentation
-------------
Online documentation is available at:

https://github.com/trinityrnaseq/trinityrnaseq/wiki

]])


load("perl/5.24.0")
load("bowtie/1.2.0")
load("bowtie2/2.3.0")
load("java-jdk/1.8.0_92")
load("samtools/1.3.1")
load("RSEM/1.3.0")


-- Perl Libraries
prepend_path('PERL5LIB', pathJoin(installDir,"PerlLib"))


-- PATH
prepend_path('PATH', installDir)
