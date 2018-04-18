-- -*- lua -*-


------------------------------------------------------------------------
-- giggle 0.6.3
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
whatis("Name:        giggle")
whatis("Version:     0.6.3")
whatis("Category:    search engine")
whatis("Description: GIGGLE is a genomics search engine that identifies and ranks the significance of shared genomic loci between query features and thousands of genome interval files.")
whatis("URL:         https://github.com/ryanlayer/giggle")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use giggle 0.6.3.


Product Description
-------------------
GIGGLE is a genomics search engine that identifies and ranks the 
significance of shared genomic loci between query features and thousands 
of genome interval files.


Dependencies
------------
gcc/6.2.0
bzip2/1.0.6
curl/7.51.0
zlib/1.2.8
htslib/1.6.0 
xz/5.2.2

Documentation
-------------
Online documentation is available at:

https://github.com/ryanlayer/giggle


Usage
-------------
$ giggle
$ $GIGGLE_ROOT/bin/giggle
$ ls -la $GIGGLE_ROOT


# API python support
# python 2.7.13 and 3.5.3

$ module load python 2.7.13
$ python
>>> from giggle import Giggle

$ module load python 3.5.3
$ python3
>>> from giggle import Giggle


]])


load("bzip2/1.0.6")
load("curl/7.51.0")
load("zlib/1.2.8")
load("htslib/1.6.0")
load("xz/5.2.2")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))


-- LIB PATH
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- GIGGLE ROOT ENV
setenv("GIGGLE_ROOT",installDir)
