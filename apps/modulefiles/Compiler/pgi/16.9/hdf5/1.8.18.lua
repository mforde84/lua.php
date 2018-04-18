-- -*- lua -*-


------------------------------------------------------------------------
-- hdf5 1.8.18
-- Tony Aburaad
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "pgi-16.9"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        hdf5")
whatis("Version:     1.8.18")
whatis("Category:    library")
whatis("Description: Data model, library, and file format for storing and managing data.")
whatis("URL:         https://www.hdfgroup.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use HDF5 1.8.18.


Product Description
-------------------
The HDF Group provides a unique suite of technologies and supporting 
services that make possible the management of and long term access to 
extremely large and complex data collections.

Hierarchical Data Format (HDF) technologies address the problems of 
how to organize, store, discover, access, analyze, share, and preserve 
data in the face of enormous growth in size and complexity.


Dependencies
------------
pgi/16.9


Documentation
-------------
Online documentation is available at:

https://support.hdfgroup.org/HDF5/doc/index.html

]])



-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))

