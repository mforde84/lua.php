-- -*- lua -*-


------------------------------------------------------------------------
-- sbt 1.1.1
-- 1.1.1 
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
whatis("Name:        sbt")
whatis("Version:     1.1.1")
whatis("Category:    scala programming")
whatis("Description: build tools for scala and java.")
whatis("URL:         https://github.com/sbt/sbt")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use sbt 1.1.1


Product Description
-------------------
sbt build tool and interactive shell

Dependencies
------------
java-jdk/1.8.0_92


Documentation
-------------
Online documentation is available at:

http://www.scala-sbt.org/

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))

setenv('SBT_HOME', installDir)

