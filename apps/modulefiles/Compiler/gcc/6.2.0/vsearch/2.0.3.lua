-- -*- lua -*-


------------------------------------------------------------------------
-- vsearch 2.0.3
-- Qiannan Miao 
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
whatis("Name:        vsearch")
whatis("Version:     2.0.3")
whatis("Category:    analysis")
whatis("Description: Versatile open-source tool for metagenomics")
whatis("URL:         https://github.com/torognes/vsearch")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use vsearch 2.0.3


Product Description
-------------------
VSEARCH supports de novo and reference based chimera detection, clustering, full-length and prefix 
dereplication, rereplication, reverse complementation, masking, all-vs-all pairwise global alignment, 
exact and global alignment searching, shuffling, subsampling and sorting. It also supports FASTQ file 
analysis, filtering, conversion and merging of paired-end reads.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8
bzip2/1.0.6


Documentation
-------------

Online documentation is available at:

https://github.com/torognes/vsearch

]])



-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))

-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))
