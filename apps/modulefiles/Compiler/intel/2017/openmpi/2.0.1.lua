-- -*- lua -*-


------------------------------------------------------------------------
-- Open MPI 2.0.1
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
whatis("Name:        Open MPI")
whatis("Version:     2.0.1")
whatis("Category:    mpi, library")
whatis("Description: High Performance Message Passing Library")
whatis("URL:         https://www.open-mpi.org")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Open MPI 2.0.1.


Product Description
-------------------
Open MPI is a Message Passing Interface (MPI) library project combining 
technologies and resources from several other projects (FT-MPI, LA-MPI, 
LAM/MPI, and PACX-MPI).

The Open MPI project specifies several top-level goals:

   * create a free, open source software, peer-reviewed, 
     production-quality complete MPI-3.0 implementation
   * provide extremely high, competitive performance (low latency or 
     high bandwidth)
   * involve the high-performance computing community directly with 
     external development and feedback (vendors, 3rd party researchers, 
     users, etc.)
   * provide a stable platform for 3rd-party research and commercial 
     development
   * help prevent the "forking problem" common to other MPI projects
   * support a wide variety of high-performance computing platforms and 
     environments


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

https://www.open-mpi.org/doc/v2.0

]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib/openmpi"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib/openmpi"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))
setenv("MPICC", "mpicc")
setenv("MPICXX", "mpicxx")
setenv("CC", "mpicc")
setenv("CXX", "mpicxx")
setenv("FC", "mpif90")
setenv("F77", "mpif77")
setenv("F90", "mpif90")
setenv("MPIF77", "mpif77")
setenv("MPIF90", "mpif90")


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))


-- Hierarchy Controls
prepend_path('MODULEPATH', pathJoin(os.getenv("MODULEPATH_ROOT"),mdir))
family("MPI")
