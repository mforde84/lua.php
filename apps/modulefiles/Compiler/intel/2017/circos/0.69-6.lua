-- -*- lua -*-


------------------------------------------------------------------------
-- circos 0.69-6
-- Qiannan Miao
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
whatis("Name:        circos")
whatis("Version:     0.69-6")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://circos.ca/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use circos 0.69-6


Product Description
-------------------
Circos is a software package for visualizing data and information. It 
visualizes data in a circular layout - this makes Circos ideal for 
exploring relationships between objects or positions. There are other 
reasons why a circular layout is advantageous, not the least being 
the fact that it is attractive.


Dependencies
------------
intel/2017
perl/5.24.0
libgd/2.1.1


Documentation
-------------
Online documentation is available at:

http://circos.ca/software/readme/

]])


-- PREREQUISITE
load("perl/5.24.0")
load("libgd/2.1.1")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
