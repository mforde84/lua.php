-- -*- lua -*-


------------------------------------------------------------------------
-- SeqAn 2.3.2
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
whatis("Name:        SeqAn")
whatis("Version:     2.3.2")
whatis("Category:    toolkit")
whatis("Description: Toolkit for sequence analysis.")
whatis("URL:         https://github.com/seqan/seqan")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use SeqAn 2.3.2


Product Description
-------------------
SeqAn is an open source C++ library of efficient algorithms and data 
structures for the analysis of sequences with the focus on biological 
data. The library applies a unique generic design that guarantees high 
performance, generality, extensibility, and integration with other 
libraries. SeqAn is easy to use and simplifies the development of new 
software tools with a minimal loss of performance.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8
bzip2/1.0.6
boost/1.55.0
python/2.7.13
java-jdk/1.8.0_92


Documentation
-------------
Online documentation is available at:

http://seqan.readthedocs.io/en/master/

]])


-- PREREQUISITES
load("zlib/1.2.8")
load("bzip2/1.0.6")
load("boost/1.55.0")
load("python/2.7.13")
load("java-jdk/1.8.0_92")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
