-- -*- lua -*-


------------------------------------------------------------------------
-- pcre 8.39 
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
whatis("Name:        pcre")
whatis("Version:     8.39")
whatis("Category:    regular expression, library")
whatis("Description: Library for regular expressions")
whatis("URL:         http://www.pcre.org")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use pcre 8.39 


Product Description
-------------------
The PCRE library is a set of functions that implement regular 
expression pattern matching using the same syntax and semantics as 
Perl 5. PCRE has its own native API, as well as a set of wrapper 
functions that correspond to the POSIX regular expression API. The 
PCRE library is free, even for building proprietary software.


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

http://www.pcre.org/current/doc/html/

]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))


