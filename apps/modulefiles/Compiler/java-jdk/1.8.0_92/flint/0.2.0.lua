-- -*- lua -*-


------------------------------------------------------------------------
-- Flint v0.2.0
-- Martin Forde
------------------------------------------------------------------------


-- Local Variables
local pkgName	   = myModuleName()
local version	   = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "java-jdk-1.8.0_92"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        flint")
whatis("Version:     0.2.0")
whatis("Category:    Apache Spark library")
whatis("Description: a time series library for Apache Spark")
whatis("URL:         https://github.com/twosigma/flint")


--Help Message
help(
[[


Purpose
-------
This module file defines the system paths and environment variables
needed to use flint v0.2.0


Product Description
-------------------
Flint is an open source library for Spark based around the TimeSeriesRDD,
a time series aware data structure, and a collection of time series utility
and analysis functions that use TimeSeriesRDDs. Unlike DataFrame and Dataset,
Flint's TimeSeriesRDDs can leverage the existing ordering properties of
datasets at rest and the fact that almost all data manipulations and analysis
over these datasets respect their temporal ordering properties. It differs
from other time series efforts in Spark in its ability to efficiently compute
across panel data or on large scale high frequency data.


Dependencies
------------
java-jdk/1.8.0_92
gcc/6.2.0
python/3.5.3


Documentation
-------------
Online documentation is available at:

https://github.com/twosigma/flint


Virtualenv
-------------
flint is installed as apart of a virtual environment utilizing
python/3.5.3. Upon loading the the FLINT_ENV environment variable will
be available. 

To use python bindings, use:

(flint_env) $ pyspark --jars \ 
 ${FLINT_ENV}/flint/target/scala-2.11/flint-assembly-0.2.0-SNAPSHOT.jar \
 --py-files ${FLINT_ENV}/flint/target/scala-2.11/flint-assembly-0.2.0-SNAPSHOT.jar
...
>>> import ts.flint 


To exit from the virtual environment, use any of the following:

$ deactivate
$ module unload flint
$ module purge

]])


-- Prerequisites
load("gcc/6.2.0")
load("python/3.5.3")

execute {cmd="source /apps/software/java-jdk-1.8.0_92/flint/0.2.0/flint_env/bin/activate", modeA={"load"}}
execute {cmd="deactivate",modeA={"unload"}}

setenv("FLINT_ENV","/apps/software/java-jdk-1.8.0_92/flint/0.2.0/flint_env")
prepend_path('PATH', "/apps/software/java-jdk-1.8.0_92/flint/0.2.0/flint_env/spark-2.0.0")
setenv("SPARK_HOME","/apps/software/java-jdk-1.8.0_92/flint/0.2.0/flint_env/spark-2.0.0")

