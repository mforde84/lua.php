-- -*- lua -*-


------------------------------------------------------------------------
-- jellyfish 2.2.3
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
whatis("Name:        jellyfish")
whatis("Version:     2.2.3")
whatis("Category:    ")
whatis("Description: ")
whatis("URL:         http://www.genome.umd.edu/jellyfish.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use jellyfish 2.2.3


Product Description
-------------------
Jellyfish is a tool for fast, memory-efficient counting of k-mers in 
DNA. A k-mer is a substring of length k, and counting the occurrences 
of all such substrings is a central step in many analyses of DNA 
sequence. JELLYFISH can count k-mers quickly by using an efficient 
encoding of a hash table and by exploiting the "compare-and-swap" CPU 
instruction to increase parallelism.


Dependencies
------------
intel/2017
perl/5.24.0
python/2.7.13


Documentation
-------------
Online documentation is available at:

http://www.genome.umd.edu/docs/JellyfishUserGuide.pdf

]])


-- Prerequisites
load("perl/5.24.0")
load("python/2.7.13")


-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))

-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))
prepend_path('CPATH', pathJoin(installDir,"include/jellyfish-2.2.3"))
prepend_path('CPATH', pathJoin(installDir,"include/jellyfish-2.2.3/jellyfish"))

-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))

