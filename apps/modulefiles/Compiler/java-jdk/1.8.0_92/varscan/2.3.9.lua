-- -*- lua -*-


------------------------------------------------------------------------
-- VarScan 2.3.9
-- Tony Aburaad
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "java-jdk-1.8.0_92"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        VarScan")
whatis("Version:     2.3.9")
whatis("Category:    variants")
whatis("Description: Variant detection in massively parallel sequencing data.")
whatis("URL:         http://varscan.sourceforge.net/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use VarScan 2.3.9


Product Description
-------------------
VarScan is a platform-independent mutation caller for targeted, exome, 
and whole-genome resequencing data generated on Illumina, SOLiD, 
Life/PGM, Roche/454, and similar instruments. The newest version, 
VarScan 2, is written in Java, so it runs on most operating systems. 
It can be used to detect different types of variation.


Usage
-----
When this module is loaded, the environmental variable VARSCAN is available.

Example:

java -jar $VARSCAN  [COMMAND] [OPTIONS]


Dependencies
------------
java-jdk/1.8.0_92


Documentation
-------------
Online documentation is available at:

http://varscan.sourceforge.net/doc/index.html

]])


-- TRIMMOMATIC Environment Variable
setenv("VARSCAN",pathJoin(installDir,"VarScan.v2.3.9.jar"))


-- CLASSPATH
prepend_path('VARSCAN', pathJoin(installDir,"VarScan.v2.3.9.jar"))



