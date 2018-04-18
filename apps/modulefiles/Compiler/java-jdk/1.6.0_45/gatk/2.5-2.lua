-- -*- lua -*-


------------------------------------------------------------------------
-- Genome Analysis Toolkit 2.5-2
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
whatis("Name:        Genome Analysis Toolkit")
whatis("Version:     2.5-2")
whatis("Category:    toolkit")
whatis("Description: Toolkit focused on variant discovery and genotyping.")
whatis("URL:         https://software.broadinstitute.org/gatk/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use the Genome Analysis Toolkit 2.5-2


Product Description
-------------------
Developed by the Data Science and Data Engineering group at the Broad 
Institute, the toolkit offers a wide variety of tools with a primary 
focus on variant discovery and genotyping. Its powerful processing 
engine and high-performance computing features make it capable of 
taking on projects of any size.


Usage
-----
When this module is loaded, the environmental variable GATK is available.

Example:

java -Xmx1G -jar ${GATK} -T RealignerTargetCreator


Dependencies
------------
java-jdk/1.6.0_45


Documentation
-------------
Online documentation is available at:

https://software.broadinstitute.org/gatk/documentation/


]])


-- GATK Environment Variable
setenv("GATK",pathJoin(installDir,"GenomeAnalysisTK.jar"))


-- CLASSPATH
prepend_path('CLASSPATH', pathJoin(installDir,"GenomeAnalysisTK.jar"))



