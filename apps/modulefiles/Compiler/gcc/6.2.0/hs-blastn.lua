-- -*- lua -*-


------------------------------------------------------------------------
-- HS-BLASTN
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
whatis("Name:        HS-BLASTN")
whatis("Version:     N/A")
whatis("Category:    alignment")
whatis("Description: Nucleotide-nucleotide sequences aligner.")
whatis("URL:         https://github.com/chenying2016/queries/tree/master/hs-blastn-src")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use HS-BLASTN.


Product Description
-------------------
HS-BLASTN is a Nucleotide-Nucleotide aligner that searches nucleotide 
queries against a large nucleotide database. It aims to speedup the 
NCBI-BLASTN (the default task, megablast) and produces the same 
results as NCBI-BLASTN. HS-BLASTN first builds an FMD-index for the 
database (the index command), and then performs then MegaBLAST search 
algorithms (the align command). HS-BLASTN adopts some source codes 
from BWA (FMD-index) and NCBI-BLAST (maskers, statistics, ungapped 
alignment algorithms and gapped alignment algorithms). HS-BLASTN 
supports both FASTA and FASTQ format query files. The base qualities 
in FASTQ format files will not be considered.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://github.com/chenying2016/queries/blob/master/hs-blastn-src/README.md

]])


-- PATH
prepend_path('PATH', installDir)


