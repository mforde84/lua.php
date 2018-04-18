-- -*- lua -*-


------------------------------------------------------------------------
-- treemix 1.13
-- Mike Jarsulic
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
whatis("Name:        treemix")
whatis("Version:     1.13")
whatis("Category:    population")
whatis("Description: Method for inferring the patterns of population splits and mixtures in the history of a set of populations.")
whatis("URL:         https://bitbucket.org/nygcresearch/treemix/wiki/Home")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use treemix 1.13.


Product Description
-------------------
TreeMix is a method for inferring the patterns of population splits 
and mixtures in the history of a set of populations. In the underlying 
model, the modern-day populations in a species are related to a common 
ancestor via a graph of ancestral populations. The allele frequencies 
in the modern populations are used to infer the structure of this graph.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://bitbucket.org/nygcresearch/treemix/wiki/Home

]])


-- Prequisites 
load("gsl/2.3")
load("boost/1.61.0")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))

