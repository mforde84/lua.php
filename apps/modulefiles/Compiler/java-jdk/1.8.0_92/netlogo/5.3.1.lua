-- -*- lua -*-


------------------------------------------------------------------------
-- NetLogo 5.3.1
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
whatis("Name:        NetLogo")
whatis("Version:     5.3.1")
whatis("Category:    modeling")
whatis("Description: Programmable modeling environment.")
whatis("URL:         https://ccl.northwestern.edu/netlogo/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use the NetLogo 5.3.1


Product Description
-------------------
NetLogo is a programmable modeling environment for simulating natural 
and social phenomena. It was authored by Uri Wilensky in 1999 and has 
been in continuous development ever since at the Center for Connected 
Learning and Computer-Based Modeling.

NetLogo is particularly well suited for modeling complex systems 
developing over time. Modelers can give instructions to hundreds or 
thousands of "agents" all operating independently. This makes it 
possible to explore the connection between the micro-level behavior 
of individuals and the macro-level patterns that emerge from their 
interaction. 


Usage
-----
When this module is loaded, the environmental variable NETLOGO is available.

Example:

java -Xmx1G ${NETLOGO} --model 


Dependencies
------------
java-jdk/1.8.0_92


Documentation
-------------
Online documentation is available at:

https://ccl.northwestern.edu/netlogo/docs/


]])


-- NETLOGO Environment Variable
setenv('NETLOGO',"-Dfile.encoding=UTF-8 -classpath /apps/software/java-jdk-1.8.0_92/netlogo/5.3.1/app/NetLogo.jar org.nlogo.headless.Main")

