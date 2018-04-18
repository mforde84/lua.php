-- -*- lua -*-


------------------------------------------------------------------------
-- mixcr 2.1.5
-- Qiannan Miao 
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
whatis("Name:        mixcr")
whatis("Version:     2.1.5")
whatis("Category:    toolkit")
whatis("Description: MiXCR is a universal software for fast and accurate analysis of raw T- or B- cell receptor repertoire sequencing data.")
whatis("URL:         https://milaboratory.com/software/mixcr/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use MiXCR 2.1.5


Product Description
-------------------
MiXCR processes big immunome data from raw sequences 
to quantitated clonotypes. MiXCR is:

  * Universal: effectively processes data from most of existing sample preparation protocols
    * Extracts both T- and B-cell receptor repertoires
    * Extracts repertoire data even from regular RNA-Seq
    * Successfully analyses full-length antibody data
  * Sensitive: specially optimized alignment algorithms extract maximum from your datasets
  * Robust: carefully assembles clonotypes correcting for false diversity, arising from PCR and sequencing errors
  * Verbose: provides comprehensive information for assembled clonotypes and alignments
  * Simple: requires zero parameters for a typical analysis
  * and yet very flexible
    * all analysis parameters are well-documented and can be customized
    * clones can be assembled using custom sequence parts 
      (e.g. allows for full-length antibody clonotype assembly)
    * lots of intermediate information can be transparently extracted for custom analysis or evaluation of 
      analysis / sample preparation issues

Usage
-----
When this module is loaded, the MiXCR executables are available.

Example:

java -jar ${MIXCR}


Dependencies
------------
java-jdk/1.8.0_92


Documentation
-------------
Online documentation is available at:

http://mixcr.readthedocs.io/en/latest/install.html

]])


-- MiXCR Environment Variable
setenv("MIXCR",pathJoin(installDir,"mixcr.jar"))


-- CLASSPATH
prepend_path('CLASSPATH', pathJoin(installDir,"mixcr.jar"))


-- Executables
prepend_path('PATH', installDir)
