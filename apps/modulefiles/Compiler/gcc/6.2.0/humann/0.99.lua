-- -*- lua -*-


------------------------------------------------------------------------
-- humann 0.99
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
whatis("Name:        humann")
whatis("Version:     0.99")
whatis("Category:    analysis")
whatis("Description: Pipeline for determining the presence/absence and abundance of microbial pathways.")
whatis("URL:         https://bitbucket.org/biobakery/humann")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use humann 0.99


Product Description
-------------------
HUMAnN is a pipeline for efficiently and accurately determining the presence/absence and abundance of 
microbial pathways in a community from metagenomic data. Sequencing a metagenome typically produces millions 
of short DNA/RNA reads. HUMAnN takes these reads as inputs and produces gene and pathway summaries as outputs.

Use
---
Run Python scripts with desired flags.

ex.) hits.py --example-flag

Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

https://bitbucket.org/biobakery/humann

]])



-- Executables
prepend_path('PATH', pathJoin(installDir, 'src'))

