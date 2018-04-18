-- -*- lua -*-


------------------------------------------------------------------------
-- Protocol Buffers 2.5.0
-- Mike Jarsulic
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
whatis("Name:        Protocol Buffers")
whatis("Version:     2.5.0")
whatis("Category:    library")
whatis("Description: Mechanism for serializing structured data.")
whatis("URL:         https://developers.google.com/protocol-buffers/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Protocol Buffers.


Product Description
-------------------
Protocol buffers are Google's language-neutral, platform-neutral, 
extensible mechanism for serializing structured data -- think XML, 
but smaller, faster, and simpler. You define how you want your data 
to be structured once, then you can use special generated source code 
to easily write and read your structured data to and from a variety 
of data streams and using a variety of languages.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://developers.google.com/protocol-buffers/docs/overview

]])


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Libraries
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))




