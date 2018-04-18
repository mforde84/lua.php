-- -*- lua -*-


------------------------------------------------------------------------
-- cramtools v3.0.0
-- Martin Forde
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
whatis("Name:        cramtools")
whatis("Version:     3.0.0")
whatis("Category:    compression")
whatis("Description: CRAM compression API for raw sequencing reads.")
whatis("URL:         https://github.com/enasequence/cramtools")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use cramtools 3.0.0.


Product Description
-------------------
CRAMTools is a set of Java tools and APIs for efficient compression of 
sequence read data. Although this is intended as a stable version the 
code is released as early access. Parts of the CRAMTools are 
experimental and may not be supported in the future.


Usage
-----
When this module is loaded, the environmental variable CRAMTOOLS is available.

Example:

java -jar $CRAMTOOLS  [COMMAND] [OPTIONS]


Dependencies
------------
java-jdk/1.8.0_92


Documentation
-------------
Online documentation is available at:

https://github.com/enasequence/cramtools

]])


-- CRAMTOOLS Environment Variable
setenv("CRAMTOOLS",pathJoin(installDir,"cramtools-3.0.jar"))


-- CLASSPATH
prepend_path('CRAMTOOLS', pathJoin(installDir,"cramtools-3.0.jar"))

-- Executables 
prepend_path('PATH',installDir)
