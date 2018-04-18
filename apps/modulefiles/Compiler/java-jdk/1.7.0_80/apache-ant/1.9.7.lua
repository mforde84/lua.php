-- -*- lua -*-


------------------------------------------------------------------------
-- Apache Ant 1.9.7
-- Mike Jarsulic 
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
whatis("Name:        apache-ant")
whatis("Version:     1.9.7")
whatis("Category:    Java, programming")
whatis("Description: Tool for building Java applications")
whatis("URL:         http://ant.apache.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use apache-ant 1.9.7


Product Description
-------------------
Apache Ant is a Java library and command-line tool whose mission is 
to drive processes described in build files as targets and extension 
points dependent upon each other. The main known usage of Ant is the 
build of Java applications. Ant supplies a number of built-in tasks 
allowing to compile, assemble, test and run Java applications. Ant 
can also be used effectively to build non Java applications, for 
instance C or C++ applications. More generally, Ant can be used to 
pilot any type of process which can be described in terms of targets 
and tasks.

Ant is written in Java. Users of Ant can develop their own "antlibs" 
containing Ant tasks and types, and are offered a large number of 
ready-made commercial or open-source "antlibs".

Ant is extremely flexible and does not impose coding conventions or 
directory layouts to the Java projects which adopt it as a build tool. 


Dependencies
------------
java-jdk/1.7.0_80


Documentation
-------------
Online documentation is available at:

http://ant.apache.org/manual/index.html

]])


-- ANT_HOME
setenv('ANT_HOME', installDir)


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


