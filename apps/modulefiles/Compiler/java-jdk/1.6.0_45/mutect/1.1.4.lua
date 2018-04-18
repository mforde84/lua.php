-- -*- lua -*-


------------------------------------------------------------------------
-- MuTect 1.1.4
-- Qiannan Miao 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "java-jdk-1.6.0_45"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        MuTect")
whatis("Version:     1.1.4")
whatis("Category:    toolkit")
whatis("Description: Toolkit focused on variant discovery and genotyping.")
whatis("URL:         http://archive.broadinstitute.org/cancer/cga/mutect")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use MuTect 1.1.4


Product Description
-------------------
MuTect is a method developed at the Broad Institute for the reliable and 
accurate identification of somatic point mutations in next generation 
sequencing data of cancer genomes.


Usage
-----
When this module is loaded, the environmental variable MUTECT is available.

Example:

java -Xmx2g -jar ${MUTECT}


Dependencies
------------
java-jdk/1.6.0_45


Documentation
-------------
Online documentation is available at:

http://archive.broadinstitute.org/cancer/cga/mutect_run


]])


-- GATK Environment Variable
setenv("MUTECT",pathJoin(installDir,"muTect-1.1.4.jar"))


-- CLASSPATH
prepend_path('CLASSPATH', pathJoin(installDir,"muTect-1.1.4.jar"))



