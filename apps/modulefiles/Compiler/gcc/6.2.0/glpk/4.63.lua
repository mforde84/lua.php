-- -*- lua -*-


------------------------------------------------------------------------
-- glpk 4.63
-- Qiannan Miao
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
whatis("Name:        glpk")
whatis("Version:     4.63")
whatis("Category:    solver")
whatis("Description: GNU Linear Programming Kit.")
whatis("URL:         https://www.gnu.org/software/glpk/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use glpk 4.63


Product Description
-------------------
The GLPK (GNU Linear Programming Kit) package is intended for solving 
large-scale linear programming (LP), mixed integer programming (MIP), 
and other related problems. It is a set of routines written in ANSI C 
and organized in the form of a callable library.

GLPK supports the GNU MathProg modeling language, which is a subset of 
the AMPL language.

The GLPK package includes the following main components:

   * primal and dual simplex methods
   * primal-dual interior-point method
   * branch-and-cut method
   * translator for GNU MathProg
   * application program interface (API)
   * stand-alone LP/MIP solver 


Dependencies
------------
gcc/6.2.0


]])


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Libraries
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
