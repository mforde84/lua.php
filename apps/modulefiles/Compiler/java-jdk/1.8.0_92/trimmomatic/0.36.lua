-- -*- lua -*-


------------------------------------------------------------------------
-- Trimmomatic 0.36
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
whatis("Name:        Trimmomatic")
whatis("Version:     0.36")
whatis("Category:    toolkit")
whatis("Description: A flexible read trimming tool for Illumina NGS data.")
whatis("URL:         http://www.usadellab.org/cms/index.php?page=trimmomatic")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Trimmomatic 0.36


Product Description
-------------------
Trimmomatic performs a variety of useful trimming tasks for illumina 
paired-end and single ended data. The selection of trimming steps and 
their associated parameters are supplied on the command line.


Usage
-----
When this module is loaded, the environmental variable TRIMMOMATIC is available.

Example:

java -jar $TRIMMOMATIC {other options}


Dependencies
------------
java-jdk/1.8.0_92


Documentation
-------------
Online documentation is available at:

http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/TrimmomaticManual_V0.32.pdf

]])


-- TRIMMOMATIC Environment Variable
setenv("TRIMMOMATIC", pathJoin(installDir,"trimmomatic-0.36.jar"))


-- CLASSPATH
prepend_path('CLASSPATH', pathJoin(installDir,"trimmomatic-0.36.jar"))


-- PATH
prepend_path('PATH', pathJoin(installDir))
