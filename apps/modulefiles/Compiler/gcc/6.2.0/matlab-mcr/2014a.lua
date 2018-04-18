-- -*- lua -*-


------------------------------------------------------------------------
-- MATLAB MCR 2014a
-- Qiannan Miao
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
whatis("Name:        MATLAB MCR")
whatis("Version:     2014a")
whatis("Category:    Runtime")
whatis("Description: Matlab Runtime")
whatis("URL:         https://www.mathworks.com/products/compiler/mcr.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use MATLAB MCR 2014a.


Product Description
-------------------


Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

https://www.mathworks.com/products/compiler/mcr.html

]])


-- MATLAB Variable
setenv('MATLAB',pathJoin(installDir,"v83"))


-- Libraries 
prepend_path('LD_LIBRARY_PATH',pathJoin(installDir,"v83/runtime/glnxa64"))
prepend_path('LD_LIBRARY_PATH',pathJoin(installDir,"v83/bin/glnxa64"))
prepend_path('LD_LIBRARY_PATH',pathJoin(installDir,"v83/sys/os/glnxa64"))


-- X Variable
setenv('XAPPLRESDIR',pathJoin(installDir,"v83/X11/app-defaults"))


-- Executables
prepend_path('PATH',pathJoin(installDir,"v83/bin"))
prepend_path('PATH',pathJoin(installDir,"v83/bin/util"))
