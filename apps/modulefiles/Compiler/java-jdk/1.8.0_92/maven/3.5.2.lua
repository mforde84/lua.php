-- -*- lua -*-


------------------------------------------------------------------------
-- Apache Maven 3.5.2
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
whatis("Name:        maven")
whatis("Version:     3.5.2")
whatis("Category:    Java, programming")
whatis("Description: Tool for building Java applications")
whatis("URL:         https://maven.apache.org/")


--Help Message
help(
[[

Purpose
-------
Maven, a Yiddish word meaning accumulator of knowledge, was originally started 
as an attempt to simplify the build processes in the Jakarta Turbine project. 
There were several projects each with their own Ant build files that were all 
slightly different and JARs were checked into CVS. We wanted a standard way 
to build the projects, a clear definition of what the project consisted of, an 
easy way to publish project information and a way to share JARs across several 
projects. The result is a tool that can now be used for building and managing 
any Java-based project. We hope that we have created something that will make 
the day-to-day work of Java developers easier and generally help with the 
comprehension of any Java-based project.

Product Description
-------------------
See "Purpose" above.

Dependencies
------------
java-jdk/1.8.0_92

Documentation
-------------
Online documentation is available at:

https://maven.apache.org/plugins/index.html

]])

-- PREREQUISITE
load("java-jdk/1.8.0_92")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))

