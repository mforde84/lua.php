-- -*- lua -*-


------------------------------------------------------------------------
-- HMMER 3.1b2
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
whatis("Name:        HMMER")
whatis("Version:     3.1b2")
whatis("Category:    alignment")
whatis("Description: Tool for searching sequence databases for sequence homologs, and for making sequence alignments.")
whatis("URL:         http://hmmer.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use HMMER 3.1b2


Product Description
-------------------
HMMER is used for searching sequence databases for sequence homologs, 
and for making sequence alignments. It implements methods using 
probabilistic models called profile hidden Markov models (profile 
HMMs).

HMMER is often used together with a profile database, such as Pfam 
or many of the databases that participate in Interpro. But HMMER can 
also work with query sequences, not just profiles, just like BLAST. 
For example, you can search a protein query sequence against a 
database with phmmer, or do an iterative search with jackhmmer.

HMMER is designed to detect remote homologs as sensitively as 
possible, relying on the strength of its underlying probability 
models. In the past, this strength came at significant computational 
expense, but as of the new HMMER3 project, HMMER is now essentially 
as fast as BLAST. 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
The following man pages are available:
alimask(1), hmmalign(1), hmmbuild(1), hmmconvert(1), hmmemit(1), 
hmmer(1), hmmfetch(1), hmmlogo(1), hmmpgmd(1), hmmpress(1),  
hmmscan(1), hmmsearch(1), hmmsim(1), hmmstat(1), jackhmmer(1),
makehmmerdb(1), nhmmer(1), nhmmscan(1), phmmer(1)


Online documentation is available at:

http://hmmer.org/documentation.html

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Man Pages
prepend_path('MANPATH', pathJoin(installDir,"man"))


