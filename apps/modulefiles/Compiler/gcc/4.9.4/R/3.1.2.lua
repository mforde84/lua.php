-- -*- lua -*-


------------------------------------------------------------------------
-- R 3.1.2
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        R")
whatis("Version:     3.1.2")
whatis("Category:    programming, interpreter")
whatis("Description: R programming language")
whatis("URL:         https://cran.r-project.org")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use R 3.1.2


Product Description
-------------------
R is "GNU S", a freely available language and environment for 
statistical computing and graphics which provides a wide variety of 
statistical and graphical techniques: linear and nonlinear 
modelling, statistical tests, time series analysis, classification, 
clustering, etc.


Dependencies
------------
gcc/4.9.4
java-jdk/1.7.0_80
zlib/1.2.8  
bzip2/1.0.6
xz/5.2.2
curl/7.51.0
pcre/8.39


Documentation
-------------
The following man pages are available:

R(1), Rscript(1)


Online documentation is available at:

https://cran.r-project.org/manuals.html

]])


-- Prerequisites
load("java-jdk/1.7.0_80")
load("zlib/1.2.8")
load("bzip2/1.0.6")
load("xz/5.2.2")
load("curl/7.51.0")
load("pcre/8.39")


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))

