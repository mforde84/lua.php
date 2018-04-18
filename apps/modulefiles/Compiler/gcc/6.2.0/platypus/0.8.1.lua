-- -*- lua -*-


------------------------------------------------------------------------
-- Platypus 0.8.1
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
whatis("Name:        Platypus")
whatis("Version:     0.8.1")
whatis("Category:    variants")
whatis("Description: Efficient and accurate variant-detection in high-throughput sequencing data.")
whatis("URL:         http://www.well.ox.ac.uk/platypus")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Platypus 0.8.1


Product Description
-------------------
Platypus is a tool designed for efficient and accurate variant-
detection in high-throughput sequencing data. By using local 
realignment of reads and local assembly it achieves both high 
sensitivity and high specificity. Platypus can detect SNPs, MNPs, 
short indels, replacements and (using the assembly option) deletions 
up to several kb. It has been extensively tested on whole-genome, 
exon-capture, and targeted capture data, it has been run on very 
large datasets as part of the Thousand Genomes and WGS500 projects, 
and is being used in clinical sequencing trials in the Mainstreaming 
Cancer Genetics programme. Platypus has been thoroughly tested on 
data mapped with Stampy and BWA. It has not been tested with other 
mappers, but it should behave well. Platypus has been used to detect 
variants inhHuman, mouse, rat and chimpanzee samples, amongst others, 
and it should perform well on data from any diploid organism. It has 
also been used to find somatic mutations in cancer, and mozaic 
mutations in human exome data.


Usage
-----
When this module is loaded, the environmental variable PLATYPUS_PATH is available.

$ python /apps/software/gcc-6.20/platypus/0.8.1/Platypus.py callVariants
$ python /$PLATYPUS_PATH callVariants
$ Platypus.py callVariants


Dependencies
------------
gcc/6.2.0
python/2.7.13
htslib/1.3.2


xDocumentation
-------------
Online documentation is available at:

http://www.well.ox.ac.uk/platypus-doc


]])


-- Prerequisites
load("python/2.7.13")
load("htslib/1.3.2")


-- Executables
prepend_path('PATH', installDir)


-- Libraries
prepend_path('LD_LIBRARY_PATH', installDir)
prepend_path('LIBRARY_PATH', installDir)


-- PLATYPUS_PATH Environment Variable
setenv("PLATYPUS_PATH",installDir)
