-- -*- lua -*-


------------------------------------------------------------------------
-- Stampy 1.0.31
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
whatis("Name:        Stampy")
whatis("Version:     1.0.31")
whatis("Category:    alignment")
whatis("Description: Package for the mapping of short reads from Illumina sequencers onto a reference genome.")
whatis("URL:         http://www.well.ox.ac.uk/stampy")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Stampy 1.0.31


Product Description
-------------------
Stampy is a package for the mapping of short reads from illumina 
sequencing machines onto a reference genome. It's recommended for most 
workflows, including those for genomic resequencing, RNA-Seq and 
Chip-seq. Stampy excels in the mapping of reads containing that 
contain sequence variation relative to the reference, in particular 
for those containing insertions or deletions. It can map reads from a 
highly divergent species to a reference genome for instance. Stampy 
achieves high sensitivity and speed by using a fast hashing algorithm 
and a detailed statistical model. Stampy has the following features:

    * Maps single, paired-end and mate pair Illumina reads to a 
      reference genome
    * Fast: about 20 Gbase per hour in hybrid mode (using BWA)
    * Low memory footprint: 2.7 Gb shared memory for a 3Gbase genome
    * High sensitivity for indels and divergent reads, up to 10-15%
    * Low mapping bias for reads with SNPs
    * Well calibrated mapping quality scores
    * Input: Fastq and Fasta; gzipped or plain
    * Output: SAM, Maq's map file
    * Optionally calculates per-base alignment posteriors
    * Optionally processes part of the input
    * Handles reads of up to 4500 bases


Dependencies
------------
gcc/6.2.0
python/2.7.13


Documentation
-------------
Online documentation is available at:

http://www.well.ox.ac.uk/~gerton/README.txt

]])


-- Prerequisites
load("python/2.7.13")


-- Executables
prepend_path('PATH', installDir)


-- Libraries
prepend_path('LD_LIBRARY_PATH', installDir)
prepend_path('LIBRARY_PATH', installDir)


