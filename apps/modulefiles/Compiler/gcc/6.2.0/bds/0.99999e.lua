-- -*- lua -*-


------------------------------------------------------------------------
-- BigDataScript 0.99999e
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
whatis("Name:        BigDataScript")
whatis("Version:     0.99999e")
whatis("Category:    pipeline")
whatis("Description: A simple script-language for \"Big Data\" piplines.")
whatis("URL:         http://pcingola.github.io/BigDataScript/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use BigDataScript 0.99999e.


Product Description
-------------------
BigDataScript is a cross-system scripting language for working with 
big data pipelines in computer systems of different sizes and 
capabilities. 


Dependencies
------------
gcc/6.2.0
java-jdk/1.8.0_92


Documentation
-------------
Online documentation is available at:

http://pcingola.github.io/BigDataScript/bigDataScript_manual.html

]])


-- Prerequisites
load("java-jdk/1.8.0_92")


-- Executables
prepend_path('PATH', installDir)
prepend_path('PATH', pathJoin(installDir,"mesos"))


