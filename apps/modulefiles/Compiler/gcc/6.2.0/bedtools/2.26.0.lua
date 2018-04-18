-- -*- lua -*-


------------------------------------------------------------------------
-- bedtools 2.26.0
-- Mike Jarsulic 
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
whatis("Name:        bedtools")
whatis("Version:     2.26.0")
whatis("Category:    toolset")
whatis("Description: Toolset for genome arithmetic.")
whatis("URL:         http://bedtools.readthedocs.io/en/latest")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use bedtools 2.26.0


Product Description
-------------------
The bedtools utilities are a swiss-army knife of tools for a 
wide-range of genomics analysis tasks. The most widely-used tools 
enable genome arithmetic: that is, set theory on the genome. For 
example, bedtools allows one to intersect, merge, count, complement, 
and shuffle genomic intervals from multiple files in widely-used 
genomic file formats such as BAM, BED, GFF/GTF, VCF. While each 
individual tool is designed to do a relatively simple task (e.g., 
intersect two interval files), quite sophisticated analyses can be 
conducted by combining multiple bedtools operations on the UNIX 
command line.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://bedtools.readthedocs.io/en/latest/

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


