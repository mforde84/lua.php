-- -*- lua -*-


------------------------------------------------------------------------
-- lumpy-sv 0.2.13
-- Martin Forde
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
whatis("Name:        lumpysv")
whatis("Version:     0.2.13")
whatis("Category:    structural variants")
whatis("Description: a general probabilistic framework for structural variant discovery")
whatis("URL:         https://github.com/arq5x/lumpy-sv")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use lumpysv 0.2.13.


Product Description
-------------------



Dependencies
------------
gcc/6.2.0
zlib/1.2.8
samblaster/0.1.24
miniconda2/4.2.12


Documentation
-------------
Online documentation is available at:

https://github.com/arq5x/lumpy-sv


Usage
-----
$ lumpy
$ lumpy_filter
$ lumpyexpress
$ cat ${LUMPY_DIR}/lumpyexpress.config

]])


-- Prerequisites
load("zlib/1.2.8")
load("samblaster/0.1.24")
load("miniconda2/4.2.12")


-- PATH
prepend_path('PATH', installDir)

setenv("LUMPY_DIR", installDir)
