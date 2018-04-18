-- -*- lua -*-


------------------------------------------------------------------------
-- LiftOver 1
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
whatis("Name:        LiftOver")
whatis("Version:     n/a")
whatis("Category:    toolset")
whatis("Description: The LiftOver program can be used to convert coordinate ranges between genome assemblies.")
whatis("URL:         http://genome.sph.umich.edu/wiki/LiftOver")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use LiftOver


Product Description
-------------------
The LiftOver program can be used to convert coordinate ranges between 
genome assemblies. This is a command-line tool, and supports 
forward/reverse conversions, batch conversions, and conversions 
between species. The LiftOver program requires a UCSC-generated 
over.chain file as input.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://genome.sph.umich.edu/wiki/LiftOver

]])


-- PATH
prepend_path('PATH', installDir)


