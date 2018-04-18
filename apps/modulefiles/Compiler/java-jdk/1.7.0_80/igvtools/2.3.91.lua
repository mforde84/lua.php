-- -*- lua -*-


------------------------------------------------------------------------
-- igvtools 2.3.91
-- Qiannan Miao 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "java-jdk-1.7.0_80"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        igvtools")
whatis("Version:     2.3.91")
whatis("Category:    visualizations")
whatis("Description: Visualization tool for exploration of genomic datasets.")
whatis("URL:         https://software.broadinstitute.org/software/igv/home")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use igvtools 2.3.91


Product Description
-------------------
The Integrative Genomics Viewer (IGV) is a high-performance visualization tool 
for interactive exploration of large, integrated genomic datasets. It supports 
a wide variety of data types, including array-based and next-generation 
sequence data, and genomic annotations.


Usage
-----
When this module is loaded, the environmental variable IGVTOOLS is available.

Example:

java -Xmx1500m  -Djava.awt.headless=true -jar ${IGVTOOLS} [command] [options][arguments]

java -Xmx1500m  -jar ${IGVTOOLS} gui


Dependencies
------------
java-jdk/1.7.0_80


Documentation
-------------
Online documentation is available at:

https://software.broadinstitute.org/software/igv/igvtools_commandline

]])


-- igvtools Environment Variable
setenv("IGVTOOLS",pathJoin(installDir,"igvtools.jar"))


-- CLASSPATH
prepend_path('CLASSPATH', pathJoin(installDir,"igvtools.jar"))



