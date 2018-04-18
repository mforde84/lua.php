------------------------------------------------------------------------
-- Abra 2.12.0
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
whatis("Name:        Abra")
whatis("Version:     2.12.0")
whatis("Category:    realigner")
whatis("Description: Localized realigner for next generation sequencing data.")
whatis("URL:         https://github.com/mozack/abra2")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Abra 2.12.0


Product Description
-------------------
ABRA is a realigner for next generation sequencing data. It uses 
localized assembly and global realignment to align reads more accurately, 
thus improving downstream analysis (detection of indels and complex 
variants in particular).

Usage
-----
When this module is loaded, the environmental variable VARSCAN is available.

Example:

java -jar $ABRA  [COMMAND] [OPTIONS]


Dependencies
------------
java-jdk/1.8.0_92


Documentation
-------------
Online documentation is available at:

https://github.com/mozack/abra2

]])


-- ABRA Environment Variable
setenv("ABRA",pathJoin(installDir,"target/abra2-2.12-jar-with-dependencies.jar"))


-- CLASSPATH
prepend_path('ABRA',pathJoin(installDir,"target/abra2-2.12-jar-with-dependencies.jar"))


