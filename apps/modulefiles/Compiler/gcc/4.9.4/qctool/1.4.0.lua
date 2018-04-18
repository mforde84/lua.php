-- -*- lua -*-


------------------------------------------------------------------------
-- qctool 1.4.0
-- Martin Forde 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)


-- Whatis Message
whatis("Name:        qctool")
whatis("Version:     1.4.0")
whatis("Category:    GWAS")
whatis("Description: QCTOOL is a command-line utility program for manipulation and quality control of gwas datasets and other genome-wide data.")
whatis("URL:         http://www.well.ox.ac.uk/~gav/qctool/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use qctool 1.4.0


Product Description
-------------------
http://www.well.ox.ac.uk/~gav/qctool/


Dependencies
------------
gcc/4.9.4
zlib/1.2.8

Documentation
-------------

Online documentation is available at:

http://www.well.ox.ac.uk/~gav/qctool_v2/documentation/alphabetical_options.html

]])


load("zlib/1.2.8")

-- Executables
prepend_path('PATH', installDir)

