-- -*- lua -*-


------------------------------------------------------------------------
-- kraken 0.10.5
-- Tony Aburaad 
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
whatis("Name:        kraken")
whatis("Version:     0.10.5")
whatis("Category:    toolset")
whatis("Description: System for assigning taxonomic labels to short DNA sequences")
whatis("URL:         https://ccb.jhu.edu/software/kraken/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use kraken 0.10.5


Product Description
-------------------
Kraken is a system for assigning taxonomic labels to short DNA sequences, usually obtained through metagenomic studies. 
Previous attempts by other bioinformatics software to accomplish this task have often used sequence alignment or machine 
learning techniques that were quite slow, leading to the development of less sensitive but much faster abundance estimation 
programs. Kraken aims to achieve high sensitivity and high speed by utilizing exact alignments of k-mers and a novel classification algorithm.

In its fastest mode of operation, for a simulated metagenome of 100 bp reads, Kraken processed over 4 million reads per minute 
on a single core, over 900 times faster than Megablast and over 11 times faster than the abundance estimation program MetaPhlAn. 
Kraken's accuracy is comparable with Megablast, with slightly lower sensitivity and very high precision.

Kraken is written in C++ and Perl, and is designed for use with the Linux operating system.

Dependencies
------------
intel/2017


Documentation
-------------

Online documentation is available at:

https://ccb.jhu.edu/software/kraken/

]])



-- Executables
prepend_path('PATH',installDir)

