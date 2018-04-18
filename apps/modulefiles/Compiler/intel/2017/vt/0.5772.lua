-- -*- lua -*-


------------------------------------------------------------------------
-- vt 0.5772
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
whatis("Name:        vt")
whatis("Version:     0.5772")
whatis("Category:    ")
whatis("Description: A tool set for short variant discovery in genetic sequence data.")
whatis("URL:         https://github.com/atks/vt")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use vt 0.5772.


Product Description
-------------------
vt is a variant tool set that discovers short variants from Next Generation Sequencing data


Dependencies
------------
intel/2016
xz/5.2.2
zlib/1.2.8
bzip2/1.0.6


Documentation
-------------
Online documentation is available at:

http://genome.sph.umich.edu/wiki/Vt

]])

-- PREREQUISITE
load("xz/5.2.2")
load("zlib/1.2.8")
load("bzip2/1.0.6")

-- PATH
prepend_path('PATH', pathJoin(installDir))
