-- -*- lua -*-


------------------------------------------------------------------------
-- UCSCtools 343
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
whatis("Name:        UCSCtools")
whatis("Version:     343")
whatis("Category:    toolset")
whatis("Description: Collection of tools distributed by UCSC Genome Bioinformatics.")
whatis("URL:         ")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use UCSCtools 343.


Product Description
-------------------
Contains a collection of tools developed and distributed by UCSC
Genome Bioinformatics.


Dependencies
------------
intel/2017


]])


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"scripts"))
