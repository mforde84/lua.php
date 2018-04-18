-- -*- lua -*-


------------------------------------------------------------------------
-- vcflib
-- Qiannan Miao
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
whatis("Name:        vcflib")
whatis("Version:     1.0.0")
whatis("Category:    ")
whatis("Description: A C++ library for parsing and manipulating VCF files..")
whatis("URL:         https://github.com/vcflib/vcflib")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use vcflib.


Product Description
-------------------
The Variant Call Format (VCF) is a flat-file, tab-delimited textual format 
intended to concisely describe reference-indexed variations between individuals. 
VCF provides a common interchange format for the description of variation in 
individuals and populations of samples, and has become the defacto standard 
reporting format for a wide array of genomic variant detectors.

vcflib provides methods to manipulate and interpret sequence variation as it 
can be described by VCF. It is both:

  * an API for parsing and operating on records of genomic variation as it 
    can be described by the VCF format,
  * and a collection of command-line utilities for executing complex 
    manipulations on VCF files.

The API itself provides a quick and extremely permissive method to read and 
write VCF files. Extensions and applications of the library provided in the 
included utilities (*.cpp) comprise the vast bulk of the library's utility 
for most users.


Dependencies
------------
gcc/6.2.0
xz/5.2.2
bzip2/1.0.6
zlib/1.2.8
python/2.7.13
R/3.3.2


Documentation
-------------
Online documentation is available at:

https://github.com/vcflib/vcflib

]])

-- PREREQUISITE
load("xz/5.2.2")
load("bzip2/1.0.6")
load("zlib/1.2.8")
load("python/2.7.13")
load("R/3.3.2")

-- PATH
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"tabixpp/htslib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"tabixpp/htslib"))
prepend_path('PATH', pathJoin(installDir,"bin"))
