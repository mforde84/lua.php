-- -*- lua -*-


------------------------------------------------------------------------
-- ngsTools
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
whatis("Name:        ngsTools")
whatis("Version:     n/a")
whatis("Category:    toolset")
whatis("Description: ngsTools is a collection of programs for population genetics analyses from NGS data.")
whatis("URL:         https://github.com/mfumagalli/ngsTools")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use ngsTools.


Product Description
-------------------
ngsTools is a collection of programs for population genetics analyses from NGS data, taking into account its 
statistical uncertainty. The methods implemented in these programs do not rely on SNP or genotype calling, 
and are particularly suitable for low sequencing depth data. An application note illustrating its application 
has published (Fumagalli et al., 2014).

Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://github.com/mfumagalli/ngsTools

]])



load("gsl/2.3")
load("zlib/1.2.8")

-- PATH
prepend_path('PATH', installDir)
prepend_path('PATH', pathJoin(installDir,"ngsDist"))
prepend_path('PATH', pathJoin(installDir,"ngsF"))
prepend_path('PATH', pathJoin(installDir,"ngsF-HMM"))
prepend_path('PATH', pathJoin(installDir,"ngsPopGen"))
prepend_path('PATH', pathJoin(installDir,"ngsSim"))
prepend_path('PATH', pathJoin(installDir,"ngsUtils"))
