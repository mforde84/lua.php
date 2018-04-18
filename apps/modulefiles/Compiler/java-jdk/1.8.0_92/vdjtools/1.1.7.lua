-- -*- lua -*-


------------------------------------------------------------------------
-- VDJtools 1.1.7
-- Mike Jarsulic
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
whatis("Name:        VDJtools")
whatis("Version:     1.1.7")
whatis("Category:    repseq")
whatis("Description: Framework for post-analysis of repertoire sequencing data.")
whatis("URL:         https://github.com/mikessh/vdjtools")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use the VDJtools 1.1.7


Product Description
-------------------
VDJtools is an open-source Java/Groovy-based framework designed to 
facilitate analysis of immune repertoire sequencing (RepSeq) data. 
VDJtools computes a wide set of statistics and is able to perform 
various forms of cross-sample analysis. Both comprehensive tabular 
output and publication-ready plots are provided.

The main aims of the VDJtools Project are:

  * To ensure consistency between post-analysis methods and results
  * To save the time of bioinformaticians analyzing RepSeq data
  * To create an API framework facilitating development of new RepSeq 
    analysis applications
  * To provide a simple enough command line tool so it could be used 
    by immunologists and biologists with little computational 
    background


Usage
-----
When this module is loaded, the environmental variable VDJTOOLS is available.

Example:

java -Xmx1G -jar ${VDJTOOLS} 


Dependencies
------------
java-jdk/1.8.0_92
gcc/6.2.0
R/3.4.1


Documentation
-------------
Online documentation is available at:

http://vdjtools-doc.readthedocs.io/en/latest/


]])


-- Prerequisites
load("gcc/6.2.0")
load("R/3.4.1")


-- VDJTOOLS Environment Variable
setenv("VDJTOOLS", pathJoin(installDir,"vdjtools-1.1.7.jar"))


-- CLASSPATH
prepend_path('CLASSPATH', pathJoin(installDir,"vdjtools-1.1.7.jar"))


-- Executables 
prepend_path('PATH',installDir)


