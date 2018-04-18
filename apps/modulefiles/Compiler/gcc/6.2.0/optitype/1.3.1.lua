-- -*- lua -*-


------------------------------------------------------------------------
-- Optitype
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
whatis("Name:        optitype")
whatis("Version:     1.3.1")
whatis("Category:    HLA genotyping")
whatis("Description: HLA genotyping")
whatis("URL:         https://github.com/FRED-2/OptiType")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use optitype


Product Description
-------------------
Precision HLA typing from next-generation sequencing data

Authors: András Szolek, Benjamin Schubert, Christopher Mohr
Date: April 2014
Version: 1.3.1
License: OptiType is released under a three-clause BSD license

Dependencies
------------
python/2.7.13
samtools/1.6.0
seqan/2.3.2
hdf5/1.8.18
cplex/12.7

Documentation
-------------
Online documentation is available at:

https://github.com/FRED-2/OptiType


Usage:

$ python ${OPTITYPE_ROOT}/OptiTypePipeline.py --help

Default config file is available. Please make your own
and use the flag (-c) to specify it in your command call:
$ cat ${OPTITYPE_ROOT}/config.ini.example


To leave virtualenv:
$ deactivate

or 

$ module unload optitype/1.3.1



]])


-- Prerequisites

load("python/2.7.13")
load("samtools/1.6.0")
load("seqan/2.3.2")
load("hdf5/1.8.18")
load("cplex/12.7")

setenv('OPTITYPE_ROOT',installDir)

execute {cmd="source /apps/software/gcc-6.2.0/optitype/1.3.1/optitype_env/bin/activate",modeA={"load"}}
execute {cmd="deactivate",modeA={"unload"}}
