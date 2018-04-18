-- -*- lua -*-


------------------------------------------------------------------------
-- RGTDATA environment variable
-- Martin Forde
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
whatis("Name:        RGTDATA")
whatis("Version:     1.0.0")
whatis("Category:    environment variable")
whatis("Description: RGTDATA env.")
whatis("URL:         .")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use RGTDATA


Product Description
-------------------
Defines the RGTDATA env variable for use with RGT tools.


Dependencies
------------
gcc/6.2.0
python/2.7.13


]])

setenv("RGTDATA", installDir)


-- Prerequisites
load("python/2.7.13")


