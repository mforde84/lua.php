-- -*- lua -*-


------------------------------------------------------------------------
-- Picard Tools 2.8.1
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
whatis("Name:        Picard Tools")
whatis("Version:     2.8.1")
whatis("Category:    toolkit")
whatis("Description: Set of command line tools for manipulating high-throughput sequencing data.")
whatis("URL:         https://broadinstitute.github.io/picard/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Picard Tools 2.8.1


Product Description
-------------------
Picard is a set of command line tools for manipulating high-throughput 
sequencing (HTS) data and formats such as SAM/BAM/CRAM and VCF. These 
file formats are defined in the Hts-specs repository.


Usage
-----
When this module is loaded, the environmental variable PICARD is available.

Example:

java -Xmx1G -jar ${PICARD} PicardToolName


Dependencies
------------
java-jdk/1.8.0_92


Documentation
-------------
Online documentation is available at:

https://broadinstitute.github.io/picard/command-line-overview.html


]])


-- GATK Environment Variable
setenv("PICARD",pathJoin(installDir,"picard.jar"))


-- CLASSPATH
prepend_path('CLASSPATH', pathJoin(installDir,"picard.jar"))



