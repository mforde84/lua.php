-- -*- lua -*-


------------------------------------------------------------------------
-- python 2.7.6
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        python")
whatis("Version:     2.7.6")
whatis("Category:    programming, interpreter")
whatis("Description: Python programming language")
whatis("URL:         https://www.python.org")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Python 2.7.6


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
gcc/4.9.4


Documentation
-------------
Man pages of interest:

python(1)

Online documentation is available at:

https://docs.python.org/release/2.7.6

]])


load("python/2.7.6b")


-- PYTHONPATH
setenv("PYTHONPATH", "/apps/software/gcc-4.9.4/python/2.7.6b")


-- Libraries
prepend_path('LD_LIBRARY_PATH', "/apps/software/gcc-4.9.4/python/2.7.6b/lib")


-- Executables
prepend_path('PATH', "/apps/software/gcc-4.9.4/python/2.7.6b/bin")


-- Man pages
prepend_path('MANPATH', "/apps/software/gcc-4.9.4/python/2.7.6b/share/man")


family("Python")

