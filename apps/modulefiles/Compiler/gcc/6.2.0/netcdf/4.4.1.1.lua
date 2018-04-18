-- -*- lua -*-


------------------------------------------------------------------------
-- netcdf 4.4.1.1
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
whatis("Name:        netcdf")
whatis("Version:     4.4.1.1")
whatis("Category:    toolset")
whatis("Description: NetCDF is a set of software libraries and self-describing, machine-independent data formats that support the creation, access, and sharing of array-oriented scientific data.")
whatis("URL:         http://www.unidata.ucar.edu/software/netcdf/docs/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use netcdf 4.4.1.1


Product Description
-------------------
NetCDF is a set of software libraries and self-describing, machine-independent data formats that support the 
creation, access, and sharing of array-oriented scientific data. NetCDF was developed and is maintained at Unidata. 
Unidata provides data and software tools for use in geoscience education and research.

Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://www.unidata.ucar.edu/software/netcdf/docs/index.html

]])



-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))

-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))

