-- -*- lua -*-


------------------------------------------------------------------------
-- parallel-netcdf 1.8.1
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
whatis("Name:        parallel-netcdf")
whatis("Version:     1.8.1")
whatis("Category:    io-library")
whatis("Description: High-performance parallel I/O library.")
whatis("URL:         https://trac.mcs.anl.gov/projects/parallel-netcdf")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use parallel-netcdf 1.8.1


Product Description
-------------------
PnetCDF is a high-performance parallel I/O library for accessing files 
in format compatibility with  Unidata's NetCDF, specifically the 
formats of CDF-1, 2, and 5. The CDF-5 file format, an extension of 
CDF-2, supports unsigned data types and uses 64-bit integers to allow 
users to define large dimensions, attributes, and variables (> 2B array 
elements).

In addition to the conventional netCDF read and write APIs, PnetCDF also 
provides a new set of nonblocking APIs. Nonblocking APIs allow users to 
post multiple read and write requests first, and later let PnetCDF to 
aggregate the requests into a large MPI-IO request, hence to achieve a 
better performance. See nonblocking I/O for further description and 
example programs. 


Dependencies
------------
gcc/6.2.0
mpich
netcdf


Documentation
-------------
Online documentation is available at:

http://www.unidata.ucar.edu/software/netcdf/docs/index.html

]])


-- Prerequisites
load("mpich")
load("netcdf")


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))

-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))

