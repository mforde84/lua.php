-- -*- lua -*-


------------------------------------------------------------------------
-- gnuplot 5.0.7
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
whatis("Name:        gnuplot")
whatis("Version:     5.0.7")
whatis("Category:    ")
whatis("Description: ")
whatis("URL:         http://www.gnuplot.info/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use gnuplot 5.0.7


Product Description
-------------------
Gnuplot is a portable command-line driven graphing utility for Linux, 
OS/2, MS Windows, OSX, VMS, and many other platforms. The source code 
is copyrighted but freely distributed (i.e., you don't have to pay for 
it). It was originally created to allow scientists and students to 
visualize mathematical functions and data interactively, but has grown 
to support many non-interactive uses such as web scripting. It is also 
used as a plotting engine by third-party applications like Octave. 
Gnuplot has been supported and under active development since 1986.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://www.gnuplot.info/documentation.html

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))

