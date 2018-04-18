-- -*- lua -*-


------------------------------------------------------------------------
-- swig 3.0.12
-- Qiannan Miao 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "intel-2017"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        swig")
whatis("Version:     3.0.12")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://www.swig.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use swig 3.0.12


Product Description
-------------------
SWIG is an interface compiler that connects programs written in C 
and C++ with scripting languages such as Perl, Python, Ruby, and Tcl. 
It works by taking the declarations found in C/C++ header files and 
using them to generate the wrapper code that scripting languages 
need to access the underlying C/C++ code. In addition, SWIG provides 
a variety of customization features that let you tailor the wrapping 
process to suit your application.


Dependencies
------------
intel/2017
pcre/8.39


Documentation
-------------
Online documentation is available at:

http://www.shogun-toolbox.org/examples/latest/index.html

]])


-- Prerequisites
load("pcre/8.39")

-- Libraries

-- Headers

-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


