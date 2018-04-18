-- -*- lua -*-


------------------------------------------------------------------------
-- CPLEX 12.7
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
whatis("Name:        CPLEX")
whatis("Version:     12.7")
whatis("Category:    solver")
whatis("Description: Solver for linear programming, mixed integer programming, and quadratic programming.")
whatis("URL:         http://www-01.ibm.com/software/commerce/optimization/cplex-optimizer/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use CPLEX 12.7


Product Description
-------------------
IBM ILOG CPLEX Optimizer provides flexible, high-performance 
mathematical programming solvers for linear programming, mixed 
integer programming, quadratic programming, and quadratically 
constrained programming problems. These include a distributed 
parallel algorithm for mixed integer programming to leverage 
multiple computers to solve difficult problems.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Documentation is available at:

/apps/software/gcc-6.2.0/cplex/12.7/doc/html/en-US/CPLEX/

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"cplex/bin/x86-64_linux"))



