-- -*- lua -*-


------------------------------------------------------------------------
-- fasta36 36.3.8d
-- Qiannan Miao
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
whatis("Name:        fasta36")
whatis("Version:     36.3.8d")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/wrpearson/fasta36")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use fasta36 36.3.8b


Product Description
-------------------
The FASTA (pronounced FAST-Aye, not FAST-Ah) programs are a comprehensive 
set of similarity searching and alignment programs for searching protein 
and DNA sequence databases. Like the BLAST programs blastp and blastn, 
the fasta program itself uses a rapid heuristic strategy for finding 
similar regions in protein and DNA sequences. But in addition to 
heuristic similarity searching, the FASTA package provides programs for 
rigorous local (ssearch) and global (ggsearch) similarity searching, as 
well as a program for finding non-overlapping sequence similarities 
(lalign). Like BLAST, the FASTA package also includes programs for 
aligning translated DNA sequences against proteins (fastx, fasty are 
equivalent to blastx, tfastx, tfasty are similar to tblastn).


Dependencies
------------
intel/2017
zlib/1.2.8
perl/5.24.0


Documentation
-------------
Online documentation is available at:

https://github.com/wrpearson/fasta36

]])

-- PREREQUISITE
load("zlib/1.2.8")
load("perl/5.24.0")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"scripts"))
prepend_path('PATH', pathJoin(installDir,"misc"))

prepend_path('MANPATH', pathJoin(installDir,"doc"))
