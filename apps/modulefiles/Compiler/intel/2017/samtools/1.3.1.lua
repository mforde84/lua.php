-- -*- lua -*-


------------------------------------------------------------------------
-- samtools 1.3.1
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "intel-2017"
local installDir   = pathJoin(base,compiler,pkgNameVer)


-- Whatis Message
whatis("Name:        samtools")
whatis("Version:     1.3.1")
whatis("Category:    toolset")
whatis("Description: Utilities for manipulating alignments in the BAM format.")
whatis("URL:         http://www.htslib.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use samtools 1.3.1


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
intel/2017


Documentation
-------------
Man pages of interest:

samtools(1), wgsim(1)


Online documentation is available at:

http://www.htslib.org/doc/samtools.html

]])


-- Prerequisites
load("zlib/1.2.8")


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Libraries
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Man Pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))


