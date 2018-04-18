-- -*- lua -*-


------------------------------------------------------------------------
-- RepeatMasker 4.0.7
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
whatis("Name:        repeatmasker")
whatis("Version:     4.0.7")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://www.repeatmasker.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use RepeatMasker 4.0.7


Product Description
-------------------
RepeatMasker is a program that screens DNA sequences for interspersed 
repeats and low complexity DNA sequences. The output of the program 
is a detailed annotation of the repeats that are present in the query 
sequence as well as a modified version of the query sequence in which 
all the annotated repeats have been masked (default: replaced by Ns). 
Currently over 56% of human genomic sequence is identified and masked 
by the program. Sequence comparisons in RepeatMasker are performed by 
one of several popular search engines including nhmmer, cross_match, 
ABBlast/WUBlast, RMBlast and Decypher. RepeatMasker makes use of 
curated libraries of repeats and currently supports Dfam ( profile HMM 
library derived from Repbase sequences ) and Repbase, a service of the 
Genetic Information Research Institute.


Dependencies
------------
intel/2017
perl/5.24.0
hmmer/3.1b2


Documentation
-------------
Online documentation is available at:

http://www.repeatmasker.org/

]])


-- PREREQUISITE
load("perl/5.24.0")
load("hmmer/3.1b2")


-- PATH
prepend_path('PATH', pathJoin(installDir))
