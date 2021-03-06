-- -*- lua -*-


------------------------------------------------------------------------
-- samtools 0.1.18 
-- Qiannan Miao 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-6.2.0"
local installDir   = pathJoin(base,compiler,pkgNameVer)


-- Whatis Message
whatis("Name:        samtools")
whatis("Version:     0.1.18")
whatis("Category:    toolset")
whatis("Description: Utilities for manipulating alignments in the BAM format.")
whatis("URL:         http://www.htslib.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use samtools 0.1.18


Product Description
-------------------
Samtools is a set of utilities that manipulate alignments in the BAM 
format. It imports from and exports to the SAM (Sequence Alignment/Map) 
format, does sorting, merging and indexing, and allows to retrieve 
reads in any regions swiftly.

Samtools is designed to work on a stream. It regards an input file '-' 
as the standard input (stdin) and an output file '-' as the standard 
output (stdout). Several commands can thus be combined with Unix pipes. 
Samtools always output warning and error messages to the standard error 
output (stderr).

Samtools is also able to open a BAM (not SAM) file on a remote FTP or 
HTTP server if the BAM file name starts with `ftp://' or `http://'. 
Samtools checks the current working directory for the index file and 
will download the index upon absence. Samtools does not retrieve the 
entire alignment file unless it is asked to do so. 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://www.htslib.org/doc/samtools.html

]])


-- Prerequisites
load("zlib/1.2.8")


-- Executables
prepend_path('PATH', installDir)




