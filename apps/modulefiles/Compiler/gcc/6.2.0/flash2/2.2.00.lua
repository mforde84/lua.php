-- -*- lua -*-


------------------------------------------------------------------------
-- FLASH2
-- Tony Aburaad
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
whatis("Name:        FLASH2")
whatis("Version:     2.2.00")
whatis("Category:    toolset")
whatis("Description: Tool to merge paired-end reads")
whatis("URL:         https://github.com/dstreett/FLASH2")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use FLASH2


Product Description
-------------------
FLASH (Fast Length Adjustment of SHort reads) is an accurate and fast tool
to merge paired-end reads that were generated from DNA fragments whose
lengths are shorter than twice the length of reads.  Merged read pairs result
in unpaired longer reads, which are generally more desired in genome
assembly and genome analysis processes.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8


Use
_________
Run flash2 -flags


Documentation
-------------
Online documentation is available at:

https://github.com/dstreett/FLASH2

]])


-- PREREQUISITE
load("zlib/1.2.8")


-- PATH
prepend_path('PATH', installDir)


