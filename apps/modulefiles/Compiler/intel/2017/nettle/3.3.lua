-- -*- lua -*-


------------------------------------------------------------------------
-- nettle 3.3
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
whatis("Name:        nettle")
whatis("Version:     3.3")
whatis("Category:    ")
whatis("Description: ")
whatis("URL:         http://www.lysator.liu.se/~nisse/nettle/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use nettle 3.3


Product Description
-------------------
Nettle is a cryptographic library that is designed to fit easily in 
more or less any context: In crypto toolkits for object-oriented 
languages (C++, Python, Pike, ...), in applications like LSH or GNUPG, 
or even in kernel space.

Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

http://www.lysator.liu.se/~nisse/nettle/

]])


-- Prerequisites


-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib64"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib64"))

-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))

-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages

