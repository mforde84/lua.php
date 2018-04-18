-- -*- lua -*-


------------------------------------------------------------------------
-- python 3.6.0
-- Tony Aburaad
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-6.2.0"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        python")
whatis("Version:     3.6.0")
whatis("Category:    programming, interpreter")
whatis("Description: Python programming language")
whatis("URL:         https://www.python.org")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Python 3.6.0


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
gcc/6.2.0


Documentation
-------------
Man pages of interest:

python3(1)

Online documentation is available at:

https://docs.python.org/release/3.6.0

]])


-- PYTHONPATH
setenv("PYTHONPATH", installDir)


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))

