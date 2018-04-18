-- -*- lua -*-


------------------------------------------------------------------------
-- Ensembl Tools
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
whatis("Name:        Ensembl Tools")
whatis("Version:     76")
whatis("Category:    toolkit")
whatis("Description: Toolkit for working with Ensembl files.")
whatis("URL:         http://www.ensembl.org/info/docs/tools/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Ensembl Tools 76.


Product Description
-------------------
A toolkit for working with Ensembl files that consists of the following:

  * Convert a set of Ensembl IDs from a previous release into their 
    current equivalents.
  * Convert Ensembl files for use with other analysis tools


Dependencies
------------
gcc/4.9.4
perl/5.18.4

]])


-- Prerequisites
load("perl/5.18.4")


-- Executables
prepend_path('PATH', pathJoin(installDir, "scripts/assembly_converter"))
prepend_path('PATH', pathJoin(installDir, "scripts/id_history_converter"))
prepend_path('PATH', pathJoin(installDir, "scripts/region_reporter"))
prepend_path('PATH', pathJoin(installDir, "scripts/variant_effect_predictor"))
