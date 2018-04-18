-- -*- lua -*-


------------------------------------------------------------------------
-- HLA-VBSeq
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
whatis("Name:        HLA-VBSeq")
whatis("Category:    hla-typing")
whatis("Description: HLA-VBSeq is software to estimate the most likely HLA types from high-throughput sequencing data.")
whatis("URL:         http://nagasakilab.csml.org/hla/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use HLA-VBSeq.


Product Description
-------------------
HLA-VBSeq is software to estimate the most likely HLA types from high-throughput sequencing data.


Dependencies
------------
java-jdk/1.8.0_92


Usage
-----
When this module is loaded, the environmental variables HLAVBSEQ,
BAMNAMEINDEX, and PICARD are available.

Examples:

java -jar ${HLAVBSEQ} [options...]
java -jar ${BAMNAMEINDEX} [options...]
java -jar ${PICARD} SamToFastq [options...]



Documentation
-------------
Online documentation is available at:

http://nagasakilab.csml.org/hla/


]])


-- Prerequisites
load("gcc/6.2.0")
load("perl/5.24.0")
load("picard/2.8.1")


-- Executables
prepend_path('PATH', installDir)


-- Environment Variables
setenv("HLAVBSEQ",pathJoin(installDir,"HLAVBSeq.jar"))
setenv("BAMNAMEINDEX",pathJoin(installDir,"bamNameIndex.jar"))
setenv("PICARD","/apps/software/java-jdk-1.8.0_92/picard/2.8.1/picard.jar")


-- CLASSPATH
prepend_path('CLASSPATH', pathJoin(installDir,"HLAVBSeq.jar"))
prepend_path('CLASSPATH', pathJoin(installDir,"bamNameIndex.jar"))
prepend_path('CLASSPATH', "/apps/software/java-jdk-1.8.0_92/picard/2.8.1/picard.jar")
