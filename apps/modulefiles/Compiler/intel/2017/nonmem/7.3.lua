-- -*- lua -*-


------------------------------------------------------------------------
-- nonmem 7.3
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
whatis("Name:        nonmem")
whatis("Version:     7.3")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://www.iconplc.com/innovation/nonmem/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use nonmem 7.3


Product Description
-------------------
The gold standard software in Population Pharmacokinetic and 
Pharmacokinetic-Pharmacodynamic modelling.
The software consists of three parts.

    * The NONMEM® progrm
      The NONMEM® program itself is a very general(non-interactive) 
model analysis program that can be used to fit models to many different 
types of data. With version 7, Monte Carlo expectation-maximization and 
Markov Chain Monte Carlo Bayesian methods have been added to the 
classical likelihood methods available in previous versions. NONMEM®
 can be used to simulate data as well as fit data.

    * PREDPP
      PREDPP is a powerful package of subroutines that can be used by 
NONMEM® to compute predictions for population pharmacokinetic and
 pharmacodynamic data. Use of PREDPP obviates the need for the user to 
code kinetic-type equations and it also allows complicated patient-type 
data to be easily used. However, the user can also directly and very 
generally code prediction-type, likelihood or -2 log-likelihood equations, 
and thus a great variety of different types of models can be used.

    * NM-TRAN
      NM-TRAN is (non-interactive) preprocessor, allowing control and 
other needed inputs to NONMEM/PREDPP to be specified in a user friendly 
manner, with quick and comprehensive detection of a variety of errors 
that the user may have made in so doing.


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

http://www.iconplc.com/innovation/nonmem/

]])


-- PREREQUISITES
load("perl/5.24.0")


-- PATH
prepend_path('PATH', pathJoin(installDir,"run"))
prepend_path('PATH', pathJoin(installDir,"util"))
