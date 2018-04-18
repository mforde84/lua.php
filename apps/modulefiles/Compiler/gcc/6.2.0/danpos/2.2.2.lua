-- -*- lua -*-


------------------------------------------------------------------------
-- DANPOS2
-- M. Jarsulic
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
whatis("Name:        DANPOS2")
whatis("Version:     2.2.2")
whatis("Category:    toolkit")
whatis("Description: A toolkit for Dynamic Analysis of Nucleosome and Protein Occupancy by Sequencing")
whatis("URL:         https://sites.google.com/site/danposdoc/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use DANPOS2 2.2.2.


Product Description
-------------------
A toolkit for Dynamic Analysis of Nucleosome and Protein Occupancy 
by Sequencing


Dependencies
------------
gcc/6.2.0
R/3.3.2
python/2.7.13


Documentation
-------------
Online documentation is available at:

https://sites.google.com/site/danposdoc/home

]])


-- Prerequisites
load('R/3.3.2')
load('python/2.7.13')


-- PATH
prepend_path('PATH', installDir)

