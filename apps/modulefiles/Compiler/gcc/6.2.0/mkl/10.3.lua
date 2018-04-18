-- -*- lua -*-

------------------------------------------------------------------------
-- MKL 10.3
-- Tony Aburaad
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-6.2.0"
local mklRoot   = pathJoin(base,compiler,pkgNameVer)

--local composer_xe  = "compilers_and_libraries_2017"
--local VTune_xe     = "vtune_amplifier_xe_2017"
--local inspector_xe = "inspector_2017"
--local full_xe      = "compilers_and_libraries_2017.0.098"

local LMODarch     = os.getenv("LMOD_arch") or "x86_64"
local tbl          = { i686 = "ia32",  x86_64 = "intel64" }
local linuxT       = { i686 = "i386",  x86_64 = "x86_64"  }
local binT         = { i686 = "bin32", x86_64 = "bin64"  }
local binSz        = binT[LMODarch]
local mdir         = pathJoin("Compiler/intel",version)
--local base         = pathJoin("/apps/compilers/intel",version)
local archInclude  = linuxT[LMODarch] .. "-linux-gnu"
local arch         = tbl[LMODarch]
--local installDir   = pathJoin(base,full_xe,"linux")
local tbb30Dir     = pathJoin(installDir,"tbb")
--local mklRoot      = pathJoin(installDir,"mkl")
local ippRoot      = pathJoin(installDir,"ipp")


-- Whatis Message
whatis("Name:        MKL")
whatis("Version:     20.3")
whatis("Category:    library, runtime support")
whatis("Description: ")
whatis("URL:         https://software.intel.com/en-us/intel-parallel-studio-xe")


--Help Message
help(
[[

Purpose
-------


Product Description
-------------------


Dependencies
------------
None.


Documentation
-------------
The following man pages are available:

codecov(1), fpp(1), icc(1), icpc(1), ifort(1), tselect(1)

Online documentation is available at:

https://software.intel.com/en-us/intel-parallel-studio-xe-support/documentation

]])


-- General
--prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"compiler/lib",arch))
prepend_path('LIBRARY_PATH', pathJoin(mklRoot,"lib",arch))

-- IDB 
--prepend_path('NLSPATH', pathJoin(base,"debugger_2017/gdb",arch,"share/locale/%l_%t/%N"))

-- TBB
--prepend_path('LD_LIBRARY_PATH', pathJoin(tbb30Dir,"lib",arch,"gcc4.4"))
--prepend_path('LIBRARY_PATH', pathJoin(tbb30Dir,"lib",arch,"gcc4.4"))
--prepend_path('CPATH', pathJoin(tbb30Dir,"include"))

-- MKL
prepend_path('LD_LIBRARY_PATH', pathJoin(mklRoot,"lib",arch))
prepend_path('LIBRARY_PATH', pathJoin(mklRoot,"lib",arch))
prepend_path('INCLUDE', pathJoin(mklRoot,"include"))
prepend_path('CPATH', pathJoin(mklRoot,"include"))
prepend_path('NLSPATH', pathJoin(mklRoot,"lib",arch,"locale/%l_%t/%N"))

-- IPP
--prepend_path('LD_LIBRARY_PATH', pathJoin(ippRoot,"lib",arch))
--prepend_path('LIBRARY_PATH', pathJoin(ippRoot,"lib",arch))
--prepend_path('NLSPATH', pathJoin(ippRoot,"lib",arch,"locale/%l_%t/%N"))
--prepend_path('CPATH', pathJoin(ippRoot,"include"))

-- Compilers
--prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"mpi",arch,"lib"))
--prepend_path('NLSPATH', pathJoin(installDir,"compiler/lib",arch,"locale/%l_%t/%N"))
--setenv("INTEL_LICENSE_FILE", pathJoin(base,"licenses"))
--prepend_path('MANPATH', pathJoin(installDir,"man/common"))
--prepend_path('PATH', pathJoin(base,"bin"))
--prepend_path('INCLUDE', pathJoin("/usr/include",archInclude))
--prepend_path('CPATH', pathJoin("/usr/include",archInclude))

--setenv("CC", "icc")
--setenv("FC", "ifort")
--setenv("F90","ifort")
--setenv("F77", "ifort")
--setenv("CPP", "icc -E")
--setenv("CXX", "icpc")

-- VTune
--prepend_path('PATH', pathJoin(base,VTune_xe,binSz))

-- Inspector
--prepend_path('PATH', pathJoin(base,inspector_xe,binSz))


-- Hierarchy Controls
--prepend_path('MODULEPATH', pathJoin(os.getenv("MODULEPATH_ROOT"),mdir))
--family("compiler")
