-- -*- lua -*-


------------------------------------------------------------------------
-- TeX 2017
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
whatis("Name:        TeX")
whatis("Version:     2017")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://www.latex-project.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use TeX 2017


Product Description
-------------------
LaTeX is a high-quality typesetting system; it includes features 
designed for the production of technical and scientific documentation. 
LaTeX is the de facto standard for the communication and publication 
of scientific documents. LaTeX is available as free software.


Dependencies
------------
gcc/6.2.0
perl/5.24.0


Documentation
-------------
Online documentation is available at:

http://www.latex-project.org/help/documentation/

]])


-- Prerequisites
load("perl/5.24.0")

-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib/x86_64-pc-linux-gnu"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib/x86_64-pc-linux-gnu"))

-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))

-- Executables
prepend_path('PATH', pathJoin(installDir,"bin/x86_64-pc-linux-gnu"))



