-- -*- lua -*-


------------------------------------------------------------------------
-- spark 2.1.1
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
whatis("Name:        spark")
whatis("Version:     2.1.1")
whatis("Category:    programming")
whatis("Description: Engine for large-scale data processing.")
whatis("URL:         https://spark.apache.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use spark 2.1.1


Product Description
-------------------
Apache Spark is a fast and general-purpose cluster computing system. 
It provides high-level APIs in Java, Scala, Python and R, and an 
optimized engine that supports general execution graphs. It also 
supports a rich set of higher-level tools including Spark SQL for 
SQL and structured data processing, MLlib for machine learning, 
GraphX for graph processing, and Spark Streaming.


Dependencies
------------
java-jdk/1.8.0_92
gcc/6.2.0
R/3.3.2
python/2.7.13


Documentation
-------------
Online documentation is available at:

http://bio-bwa.sourceforge.net/bwa.shtml

]])


-- Prerequisites
load("gcc/6.2.0")
load("R/3.3.2")
load("python/2.7.13")


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))

setenv('SPARK_HOME', installDir)

