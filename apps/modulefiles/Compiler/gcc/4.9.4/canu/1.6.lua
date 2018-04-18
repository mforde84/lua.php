-- -*- lua -*-


------------------------------------------------------------------------
-- canu 1.6
-- Qiannan Miao
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        canu")
whatis("Version:     1.6")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/marbl/canu/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use canu 1.6


Product Description
-------------------
Canu is a fork of the Celera Assembler, designed for high-noise 
single-molecule sequencing (such as the PacBio RS II/Sequel or 
Oxford Nanopore MinION).

Canu is a hierarchical assembly pipeline which runs in four steps:

    * Detect overlaps in high-noise sequences using MHAP
    * Generate corrected sequence consensus
    * Trim corrected sequences
    * Assemble trimmed corrected sequences

Dependencies
------------
gcc/4.9.4


Documentation
-------------
Online documentation is available at:

http://canu.readthedocs.io/en/latest/tutorial.html

]])

-- PREREQUISITE
load("perl/5.18.4")
load("java-jdk/1.8.0_92")

-- PATH
prepend_path('PATH', pathJoin(installDir,"Linux-amd64/bin"))
