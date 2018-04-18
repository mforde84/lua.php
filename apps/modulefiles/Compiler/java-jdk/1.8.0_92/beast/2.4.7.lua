-- -*- lua -*-


------------------------------------------------------------------------
-- BEAST 2.4.7
-- Qiannan Miao 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "java-jdk-1.8.0_92"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        BEAST")
whatis("Version:     2.4.7")
whatis("Category:    toolkit")
whatis("Description: BEAST is a cross-platform program for Bayesian analysis of molecular sequences using MCMC.")
whatis("URL:         http://beast.bio.ed.ac.uk/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use BEAST 2.4.7


Product Description
-------------------
BEAST 2 is a cross-platform program for Bayesian phylogenetic analysis 
of molecular sequences. It estimates rooted, time-measured phylogenies 
using strict or relaxed molecular clock models. It can be used as a 
method of reconstructing phylogenies but is also a framework for 
testing evolutionary hypotheses without conditioning on a single tree 
topology. BEAST 2 uses Markov chain Monte Carlo (MCMC) to average over 
tree space, so that each tree is weighted proportional to its posterior 
probability. BEAST 2 includes a graphical user-interface for setting up 
standard analyses and a suit of programs for analysing the results.


Usage
-----
When this module is loaded, the BEAST executables are available.

Example:

java -jar ${BEAST}
java -cp ${BEAUTI}


Dependencies
------------
java-jdk/1.8.0_92


Documentation
-------------
Online documentation is available at:

http://beast.bio.ed.ac.uk/

]])


-- Beast Environment Variable
setenv("BEAST",pathJoin(installDir,"lib/beast.jar"))


-- CLASSPATH
prepend_path('CLASSPATH', pathJoin(installDir,"lib/beast.jar"))


-- Beauti Environment Variable
setenv("BEAUTI",pathJoin(installDir,"lib/beast.jar beast.app.beauti.Beauti"))

