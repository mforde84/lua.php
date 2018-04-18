-- -*- lua -*-


------------------------------------------------------------------------
-- Exabayes 1.5
-- Tony Aburaad 
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
whatis("Name:        Exabayes")
whatis("Version:     1.5")
whatis("Category:    Analysis")
whatis("Description: ExaBayes is a tool for Bayesian phylogenetic analyses.")
whatis("URL:         http://sco.h-its.org/exelixis/web/software/exabayes/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Exabayes 1.5


Product Description
-------------------
ExaBayes is a tool for Bayesian phylogenetic analyses. It implements a Markov chain Monte Carlo sampling approach 
that allows to determine the posterior probability of a tree (resp., topology) and various evolutionary model 
parameters, for instance, branch lengths or substitution rates. Similar approaches are implemented in BEAST [2] 
or MrBayes [1]. ExaBayes has heavily drawn inspiration specifically from the latter one.

ExaBayes comes with the most commonly used evolutionary models, such as the generalized time reversible model 
(GTR) of character substitution, the discretized Gamme model of among site rate heterogeneity and estimates 
trees with unconstrained branch lengths. For clocked tree models or less parameter-rich substitution models, 
we refer you to the established tools.

The distinguishing feature of ExaBayes is its capability to handle enormous datasets efficiently. ExaBayes 
provides an implementation of data parallelism using the Message Passing Interface (MPI). This means, that 
if you conduct your analysis on a computing cluster composed of several machines (a.k.a. nodes), the memory 
needed to evaluate the likelihood of trees and parameters given a large alignment can be spread out across 
multiple computing nodes. In conclusion, the size of the concatenated alignment ExaBayes can handle is only 
limited by the combined main memory of your entire computing cluster.

------------
gcc/6.2.0


Documentation
-------------
Man pages of interest:

Online documentation is available at:

http://sco.h-its.org/exelixis/web/software/exabayes/manual/index.html

]])




-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))



