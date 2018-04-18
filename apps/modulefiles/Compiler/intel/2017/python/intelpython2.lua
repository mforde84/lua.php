-- -*- lua -*-


------------------------------------------------------------------------
-- Intel Python2 Distribution
-- Mike Jarsulic
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
whatis("Name:        python")
whatis("Version:     intelpython2")
whatis("Category:    programming, interpreter")
whatis("Description: Python programming language")
whatis("URL:         https://www.python.org")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Python intelpython2


Product Description
-------------------
Python is an easy to learn, powerful programming language. It has 
efficient high-level data structures and a simple but effective 
approach to object-oriented programming. Python's elegant syntax
and dynamic typing, together with its interpreted nature, make it 
an ideal language for scripting and rapid application development 
in many areas on most platforms.

The Python interpreter and the extensive standard library are freely 
available in source or binary form for all major platforms and may 
be freely distributed. Also available are many free third party 
Python modules, programs and tools, and additional documentation.

The Python interpreter is easily extended with new functions and 
data types implemented in C or C++ (or other languages callable 
from C). Python is also suitable as an extension language for 
customizable applications.


Dependencies
------------
intel/2017


Documentation
-------------
Man pages of interest:

python(1)

Online documentation is available at:

https://software.intel.com/en-us/distribution-for-python/documentation

]])


-- PYTHONPATH
setenv("PYTHONPATH", installDir)


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include/python2.7"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))

