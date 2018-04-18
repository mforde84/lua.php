-- -*- lua -*-


------------------------------------------------------------------------
-- opossum 0.2.0
-- Martin Forde 
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
whatis("Name:        opossum")
whatis("Version:     0.2.0")
whatis("Category:    RNAseq")
whatis("Description: RNAseq read trim for variant calling.")
whatis("URL:         https://github.com/BSGOxford/Opossum")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use opossum 0.2.0


Product Description
-------------------
Opossum is a tool to pre-process RNA-seq reads prior to variant calling. 
Currently, variant callers do not generally behave well with reads 
encompassing intronic regions. Opossum splits the reads to get rid of 
the intronic parts. At the same time, it performs several quality control 
measures such as discarding secondary alignments, poorly mapped reads and 
read pairs where the two reads are pointing outwards or in the same 
direction, or that have been mapped in different chromosomes. Opossum 
also discards duplicate reads based on the start and end positions of 
the read pair. Furthermore, it merges overlapping paired-end reads.


Usage
-----
When this module is loaded, the environmental variable 
OPOSSUM_PATH is available.

$ python /apps/software/gcc-6.2.0/opossum/0.2.0/Opossum.py 
$ python "$OPOSSUM_PATH"/Opossum.py
$ Opossum.py 
$ compute_mismatch_rates.py
$ plot_mismatch_rates.py


Dependencies
------------
gcc/6.2.0
python/2.7.13


Documentation
-------------

Readme:

$ cat "$OPOSSUM_PATH"/README.md | less

Online documentation is available at:

https://github.com/BSGOxford/Opossum


]])


setenv("OPOSSUM_PATH", installDir)

-- Prerequisites
load("python/2.7.13")


-- Executables
prepend_path('PATH', installDir)


