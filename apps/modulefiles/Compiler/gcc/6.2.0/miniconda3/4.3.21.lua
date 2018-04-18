-- -*- lua -*-


------------------------------------------------------------------------
-- miniconda3 4.3.21
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
whatis("Name:        miniconda3")
whatis("Version:     4.3.21")
whatis("Category:    environment manager")
whatis("Description: Conda is a cross-platform package and environment manager that installs, runs, and updates packages and their dependencies.")
whatis("URL:         https://conda.io/miniconda.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use miniconda3 4.3.21


Product Description
-------------------
Conda is a cross-platform package and environment manager that installs, runs, and updates packages and their dependencies. 
It allows you to easily set up and switch between environments on your local computer. Conda is included in all versions 
of Anaconda and Miniconda.

Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

https://conda.io/docs/index.html

]])

setenv("LC_ALL", "en_US.UTF-8")


-- Prerequisites
load("bzip2/1.0.6")
unload("miniconda2/4.2.12")

-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))

