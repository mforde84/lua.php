-- -*- lua -*-


------------------------------------------------------------------------
-- libgd 2.1.1
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
whatis("Name:        libgd")
whatis("Version:     2.1.1")
whatis("Category:    ")
whatis("Description: ")
whatis("URL:         https://libgd.github.io/pages/about.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use libgd 2.1.1


Product Description
-------------------
gd is a graphics library.  It allows your code to quickly draw images 
complete with lines, arcs, text, multiple colors, cut and paste from 
other images, and flood fills, and write out the result as a PNG or 
JPEG file.  This is particularly useful in World Wide Web applications, 
where PNG and JPEG are two of the formats accepted for inline images 
by most browsers.


Dependencies
------------
intel/2017
zlib/1.2.8


Documentation
-------------
Online documentation is available at:

https://libgd.github.io/manuals/2.2.5/files/preamble-txt.html

]])


-- Prerequisites
load("zlib/1.2.8")


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages

