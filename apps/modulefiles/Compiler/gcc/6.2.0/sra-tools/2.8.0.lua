-- -*- lua -*-


------------------------------------------------------------------------
-- sra-tools 2.8.0
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
whatis("Name:        sra-tools")
whatis("Version:     2.8.0")
whatis("Category:    toolset")
whatis("Description: A collection of tools and libraries for using data in the INSDC Sequence Read Archives.")
whatis("URL:         https://github.com/ncbi/sra-tools")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use sra-tools 2.8.0


Product Description
-------------------
The SRA Toolkit and SDK from NCBI is a collection of tools and libraries for using data in the INSDC Sequence Read Archives.

Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

https://github.com/ncbi/sra-tools/wiki
]])



-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


