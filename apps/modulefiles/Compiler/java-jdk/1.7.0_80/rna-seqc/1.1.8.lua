-- -*- lua -*-


------------------------------------------------------------------------
-- RNA-SeQC 1.1.8
-- Tony Aburaad
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
whatis("Name:        RNA-SeQC")
whatis("Version:     1.1.8")
whatis("Category:    toolset")
whatis("Description: RNA-SeQC is a java program which computes a series of quality control metrics for RNA-seq data.")
whatis("URL:         http://archive.broadinstitute.org/cancer/cga/rna-seqc")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use RNA-SeQC.


Product Description
-------------------
RNA-SeQC is a java program which computes a series of quality control metrics for RNA-seq data. 
The input can be one or more BAM files. The output consists of HTML reports and tab delimited 
files of metrics data. This program can be valuable for comparing sequencing quality across 
different samples or experiments to evaluate different experimental parameters. It can also 
be run on individual samples as a means of quality control before continuing with downstream analysis.

Usage
-----
To run RNA-SeQC, enter the following command at the computer prompt:

java -jar ${RNASEQC} <args>



Dependencies
------------
java/1.7.0_80


Documentation
-------------
Online documentation is available at:

http://archive.broadinstitute.org/cancer/cga/rna-seqc

]])


--MODULES
load("samtools/1.3.1")
load("bwa/0.7.15")

-- Beagle Environment Variable
setenv("RNASEQC",pathJoin(installDir,"RNA-SeQC_v1.1.8.jar"))


-- CLASSPATH
prepend_path('CLASSPATH', pathJoin(installDir,"RNA-SeQC_v1.1.8.jar"))
