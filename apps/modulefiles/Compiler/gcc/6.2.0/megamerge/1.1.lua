-- -*- lua -*-


------------------------------------------------------------------------
-- megamerge 1.1
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
whatis("Name:        megamerge")
whatis("Version:     1.1")
whatis("Category:    toolset")
whatis("Description: A tool to merge assembled contigs, long reads from metagenomic sequencing runs.")
whatis("URL:         https://github.com/LANL-Bioinformatics/MeGAMerge")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use megamerge 1.1


Product Description
-------------------
MeGAMerge is a perl based wrapper/tool that can accept any number of sequence (FASTA) files containing assembled 
contigs of any length in Multi-FASTA format to produce an improved contig set based on OLC based assembly. 
All overlap parameters (Minimum Overlap Length, Identity, etc) are user-declarable at runtime. It is written to run on Linux.


Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

https://github.com/LANL-Bioinformatics/MeGAMerge

]])



-- Executables
prepend_path('PATH', installDir)


