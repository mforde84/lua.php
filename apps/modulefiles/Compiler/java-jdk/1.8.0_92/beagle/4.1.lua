-- -*- lua -*-


------------------------------------------------------------------------
-- Beagle 4.1
-- Tony Aburaad
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
whatis("Name:        Beagle")
whatis("Version:     4.1")
whatis("Category:    toolset")
whatis("Description: Performs genotype calling, genotype phasing, imputation of ungenotyped markers, and identity-by-descent segment detection.")
whatis("URL:         https://faculty.washington.edu/browning/beagle/beagle.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Beagle


Product Description
-------------------
Beagle is a software package that performs genotype calling, genotype 
phasing, imputation of ungenotyped markers, and identity-by-descent 
segment detection.


Usage
-----
To run Beagle version 4.1, enter the following command at the computer prompt:

java -Xss5m -Xmx[GB]g -jar ${BEAGLE} arguments

where [GB] is the maximum permitted size of the memory pool in gigabytes (e.g. -Xmx8g),
version is the Beagle version code (eg. "01Oct15.6a3"), and arguments is a space separated
list of arguments. Each argument has the format parameter=value. There is no white-space
between the parameter, equal sign, and parameter value. The java -Xss5m option sets the
default stack size to 5 Mb. The -Xss option can be omitted unless you encounter a stack
overflow error for your data set.


Dependencies
------------
java/1.8.0_92


Documentation
-------------
Online documentation is available at:

https://faculty.washington.edu/browning/beagle/beagle.html

]])



-- Beagle Environment Variable
setenv("BEAGLE",pathJoin(installDir,"beagle.4.1.jar"))


-- CLASSPATH
prepend_path('CLASSPATH', pathJoin(installDir,"beagle.4.1.jar"))
