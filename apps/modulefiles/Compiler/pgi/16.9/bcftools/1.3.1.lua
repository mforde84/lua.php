-- -*- lua -*-


------------------------------------------------------------------------
-- bcftools 1.3.1
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "pgi-16.9"
local installDir   = pathJoin(base,compiler,pkgNameVer)


-- Whatis Message
whatis("Name:        bcftools")
whatis("Version:     1.3.1")
whatis("Category:    toolset")
whatis("Description: Toolset for VCF and BCF files")
whatis("URL:         https://samtools.github.io/bcftools")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use bcftools 1.3.1


Product Description
-------------------
BCFtools is a set of utilities that manipulate variant calls in the 
Variant Call Format (VCF) and its binary counterpart BCF. All 
commands work transparently with both VCFs and BCFs, both 
uncompressed and BGZF-compressed.

Most commands accept VCF, bgzipped VCF and BCF with filetype 
detected automatically even when streaming from a pipe. Indexed VCF 
and BCF will work in all situations. Un-indexed VCF and BCF and 
streams will work in most, but not all situations. In general, 
whenever multiple VCFs are read simultaneously, they must be 
indexed and therefore also compressed.

BCFtools is designed to work on a stream. It regards an input 
file "-" as the standard input (stdin) and outputs to the standard 
output (stdout). Several commands can thus be combined with Unix 
pipes.


Dependencies
------------
pgi/16.9


Documentation
-------------
Man pages of interest:

bcftools(1)

Online documentation is available at:

https://samtools.github.io/bcftools/howtos/index.htm

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man Pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))


