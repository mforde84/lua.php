-- -*- lua -*-


------------------------------------------------------------------------
-- metamos 1.5
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
whatis("Name:        metamos")
whatis("Version:     1.5")
whatis("Category:    analysis")
whatis("Description: A modular framework for (meta)genomic assembly, analysis and validation.")
whatis("URL:         http://metamos.readthedocs.io/en/v1.5rc3/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use metamos 1.5


Product Description
-------------------
MetAMOS represents a focused effort to create automated, reproducible, traceable assembly & analysis infused 
with current best practices and state-of-the-art methods. MetAMOS for input can start with next-generation 
sequencing reads or assemblies, and as output, produces: assembly reports, genomic scaffolds, open-reading 
frames, variant motifs, taxonomic or functional annotations, Krona charts and HTML report.

Use
---

Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

http://metamos.readthedocs.io/en/v1.5rc3/index.html

]])


load('python/2.7.13')
load('R')


-- Executables
prepend_path('PATH', installDir)

