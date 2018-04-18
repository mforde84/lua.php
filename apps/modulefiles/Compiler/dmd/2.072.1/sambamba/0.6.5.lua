-- -*- lua -*-


------------------------------------------------------------------------
-- sambamba 0.6.5
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "dmd-2.072.1"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        Sambamba")
whatis("Version:     0.6.5")
whatis("Category:    toolkit")
whatis("Description: Tools for manipulating BAM files.")
whatis("URL:         http://lomereiter.github.io/sambamba")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Sambamba 0.6.5


Product Description
-------------------
Sambamba is a high performance modern robust and fast tool (and 
library), written in the D programming language, for working with 
SAM and BAM files. Current parallelised functionality is an important 
subset of samtools functionality, including view, index, sort, markdup, 
and depth.

Because of efficient use of modern multicore CPUs, usually sambamba is 
much faster than samtools.


Dependencies
------------
dmd/2.072.1


Documentation
-------------
Online documentation is available at:

http://lomereiter.github.io/sambamba/docs/sambamba-view.html

]])


-- Executables
prepend_path('PATH', installDir)


