-- -*- lua -*-


------------------------------------------------------------------------
-- bam-readcount 0.8.0
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
whatis("Name:        bam-readcount")
whatis("Version:     0.8.0")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/genome/bam-readcount")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use bam-readcount 0.8.0.


Product Description
-------------------
The purpose of this program is to generate metrics at single nucleotide 
positions. There are number of metrics generated which can be useful 
for filtering out false positive calls.

This program reports readcounts for each base at each position requested.
It also reports the average base quality of these bases and mapping 
qualities of the reads containing each base.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8


Documentation
-------------
Online documentation is available at:

https://github.com/genome/bam-readcount

]])

-- PREREQUISITE
load("zlib/1.2.8")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
