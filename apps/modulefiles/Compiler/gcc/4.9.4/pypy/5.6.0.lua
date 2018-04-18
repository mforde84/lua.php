-- -*- lua -*-


------------------------------------------------------------------------
-- PyPy 5.6.0
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
whatis("Name:        PyPy")
whatis("Version:     5.6.0")
whatis("Category:    programming, interpreter")
whatis("Description: Alternative implementation of Python")
whatis("URL:         https://www.python.org")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use PyPy 5.6.0


Product Description
-------------------
PyPy is a replacement for CPython. It is built using the RPython 
language that was co-developed with it. The main reason to use it 
instead of CPython is speed: it runs generally faster.

PyPy implements Python 2.7.12. It supports all of the core language, 
passing the Python test suite (with minor modifications that were 
already accepted in the main python in newer versions). It supports 
most of the commonly used Python standard library modules.

PyPy has several advantages and distinct features:

* Speed
* Memory Usage
* Compatability 
* Stackless Mode


Dependencies
------------
gcc/4.9.4


Documentation
-------------
Online documentation is available at:

http://doc.pypy.org/en/latest/

]])


-- Prerequisites
load("libffi/3.2.1")


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib_pypy"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib-python"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib_python/2.7"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


family("Python")
