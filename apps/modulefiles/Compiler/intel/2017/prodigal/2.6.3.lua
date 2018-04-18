-- -*- lua -*-


------------------------------------------------------------------------
-- prodigal 2.6.3
-- Mike Jarsulic 
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
whatis("Name:        prodigal")
whatis("Version:     2.6.3")
whatis("Category:    gene-prediction")
whatis("Description: Fast, reliable protein-coding gene prediction for prokaryotic genomes.")
whatis("URL:         http://prodigal.ornl.gov/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use prodigal 2.6.3.


Product Description
-------------------
Prodigal is a bacterial and archaeal gene finding program developed 
at Oak Ridge National Laboratory and the University of Tennessee. 


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

https://github.com/hyattpd/prodigal/wiki/Introduction


]])


-- Executables
prepend_path('PATH', installDir)


