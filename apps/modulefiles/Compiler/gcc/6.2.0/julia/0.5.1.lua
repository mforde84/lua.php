-- -*- lua -*-


------------------------------------------------------------------------
-- julia 0.5.1
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
whatis("Name:        julia")
whatis("Version:     0.5.1")
whatis("Category:    programming, interpreter")
whatis("Description: Julia programming language")
whatis("URL:         https://julialang.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Julia 0.5.1


Product Description
-------------------
Julia is a high-level, high-performance dynamic programming language for 
numerical computing. It provides a sophisticated compiler, distributed 
parallel execution, numerical accuracy, and an extensive mathematical 
function library. Julia's Base library, largely written in Julia itself, 
also integrates mature, best-of-breed open source C and Fortran libraries 
for linear algebra, random number generation, signal processing, and string 
processing. In addition, the Julia developer community is contributing a 
number of external packages through Julia's built-in package manager at a 
rapid pace. IJulia, a collaboration between the Jupyter and Julia communities, 
provides a powerful browser-based graphical notebook interface to Julia.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Man pages of interest:

julia(1)

Online documentation is available at:

https://docs.julialang.org/en/stable/

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

