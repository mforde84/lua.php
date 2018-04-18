-- -*- lua -*-


------------------------------------------------------------------------
-- BreaKmer v0.0.6
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
whatis("Name:        breakmer")
whatis("Version:     0.0.6")
whatis("Category:    ")
whatis("Description: CNV")
whatis("URL:         https://github.com/ccgd-profile/BreaKmer")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use BreaKmer v0.0.6.


Product Description
-------------------
A method to identify genomic structural variation in target regions/genes 
from reference-aligned high-throughput sequence data. It uses a "kmer" 
strategy to assemble misaligned sequence reads for predicting insertions, 
deletions, inversions, tandem duplications, and translocations at base-pair 
resolution.


Dependencies
------------
gcc/6.2.0
python/2.7.13


Documentation
-------------
Online documentation is available at:

https://github.com/ccgd-profile/BreaKmer


Usage
-------------

$ python $BREAKMER_ENV/bin/breakmer.py -h
$ breakmer.py -h

$ #to exit virtual environment
$ module unload breakmer/0.0.6
$ #to exit virtual environment
$ deactivate

]])


-- Prerequisites
load("python/2.7.13")
load("perl/5.24.0")
load("bzip2/1.0.6")
load("jellyfish/2.2.3")
load("blat/35")
load("UCSCtools/343")


setenv("BREAKMER_ENV",pathJoin(installDir,"breakmer_env"))
execute {cmd="source /apps/software/gcc-6.2.0/breakmer/0.0.6/breakmer_env/bin/activate",modeA={"load"}}
execute {cmd="deactivate",modeA={"unload"}}
