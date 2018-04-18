-- -*- lua -*-


------------------------------------------------------------------------
-- interproscan 5.25-64.0
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
whatis("Name:        interproscan")
whatis("Version:     5.25-64.0")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://www.ebi.ac.uk/interpro/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use interproscan 5.25-64.0


Product Description
-------------------
InterPro provides functional analysis of proteins by classifying 
them into families and predicting domains and important sites. We 
combine protein signatures from a number of member databases into 
a single searchable resource, capitalising on their individual 
strengths to produce a powerful integrated database and diagnostic 
tool.


Dependencies
------------
gcc/6.2.0
gnutls/3.5.9
python/2.7.13
java-jdk/1.8.0_92


Documentation
-------------
Online documentation is available at:

https://github.com/ebi-pf-team/interproscan/wiki/HowToRun

]])

-- PREREQUISITE
load("gnutls/3.5.9")
load("python/2.7.13")
load("perl/5.24.0")
load("java-jdk/1.8.0_92")


-- PATH
prepend_path('PATH', pathJoin(installDir))
