-- -*- lua -*-


------------------------------------------------------------------------
-- MPICH 3.2
-- Mike Jarsulic 
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
whatis("Name:        MPICH")
whatis("Version:     3.2")
whatis("Category:    mpi, library")
whatis("Description: High Performance, Portable Message Passing Interface")
whatis("URL:         https://www.mpich.org")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use MPICH 3.2.


Product Description
-------------------
MPICH is a high-performance and widely portable implementation of 
the Message Passing Interface (MPI) standard (MPI-1, MPI-2 and MPI-3). 

The goals of MPICH are:
 
   * provide an MPI implementation that efficiently supports different 
     computation and communication platforms including commodity 
     clusters (desktop systems, shared-memory systems, multicore 
     architectures), high-speed networks (10 Gigabit Ethernet, 
     InfiniBand, Myrinet, Quadrics) and proprietary high-end computing 
     systems (Blue Gene, Cray) 
   * enable cutting-edge research in MPI through an easy-to-extend modular 
     framework for other derived implementations.


Dependencies
------------
pgi/16.9


Documentation
-------------
Online documentation is available at:

https://www.mpich.org/documentation/guides

]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


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
