-- -*- lua -*-


------------------------------------------------------------------------
-- idba 1.1.3
-- Tony Aburaad
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "intel-2017"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        idba")
whatis("Version:     1.1.3")
whatis("Category:    graph assembler")
whatis("Description: Basic iterative de Bruijn graph assembler for second-generation sequencing reads")
whatis("URL:         https://github.com/loneknightpy/idba")

--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use idba 1.1.3


Product Description
-------------------
IDBA is the basic iterative de Bruijn graph assembler for second-generation sequencing reads. IDBA-UD, an
extension of IDBA, is designed to utilize paired-end reads to assemble low-depth regions and use progressive
depth on contigs to reduce errors in high-depth regions. It is a generic purpose assembler and especially good
for single-cell and metagenomic sequencing data. IDBA-Hybrid is another update version of IDBA-UD, which can
make use of a similar reference genome to improve assembly result. IDBA-Tran is an iterative de Bruijn graph
assembler for RNA-Seq data.

Dependencies
------------
intel/2017


Documentation
-------------

Online documentation is available at:

https://github.com/loneknightpy/idba

]])




-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))
