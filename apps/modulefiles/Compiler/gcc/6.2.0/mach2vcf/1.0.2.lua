-- -*- lua -*-


------------------------------------------------------------------------
-- Mach2VCF 1.0.2
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
whatis("Name:        Mach2VCF")
whatis("Version:     1.0.2")
whatis("Category:    data-conversion")
whatis("Description: tool to convert MaCH files to VCF files.")
whatis("URL:         https://github.com/Santy-8128/Mach2VCF")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Mach2VCF 1.0.2.


Product Description
-------------------
Mach2VCF is a C++ tool to convert MaCH files to VCF files.


Dependencies
------------
gcc/6.2.0


]])


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
