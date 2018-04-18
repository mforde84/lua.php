-- -*- lua -*-


------------------------------------------------------------------------
-- CppUnit 1.13.2
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
whatis("Name:        cppunit")
whatis("Version:     1.13.2")
whatis("Category:    Library")
whatis("Description: CppUnit is the C++ port of the famous JUnit framework for unit testing.")
whatis("URL:         https://freedesktop.org/wiki/Software/cppunit/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use CppUnit 1.13.2.


Product Description
-------------------
CppUnit is the C++ port of the famous JUnit framework for unit testing. 
Test output is in XML for automatic testing and GUI based for 
supervised tests.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
The following man pages are available:

cppunit-config(1)


Online documentation is available at:

http://cppunit.sourceforge.net/doc/1.8.0/index.html

]])



-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))

-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))

-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))

-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))

