-- -*- lua -*-


------------------------------------------------------------------------
-- JAGS 4.2.0
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
whatis("Name:        JAGS")
whatis("Version:     4.2.0")
whatis("Category:    monte carlo")
whatis("Description: Statistical analysis of Bayesian hierarchical models by Markov Chain Monte Carlo.")
whatis("URL:         http://mcmc-jags.sourceforge.net/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use JAGS 4.2.0


Product Description
-------------------
JAGS is Just Another Gibbs Sampler.  It is a program for analysis of 
Bayesian hierarchical models using Markov Chain Monte Carlo (MCMC) 
simulation  not wholly unlike BUGS.  JAGS was written with three aims 
in mind:

  * To have a cross-platform engine for the BUGS language.
  * To be extensible, allowing users to write their own functions, 
    distributions and samplers.
  * To be a plaftorm for experimentation with ideas in Bayesian modelling.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
The folling man pages are available:

jags(1)

Online documentation is available at:

https://sourceforge.net/projects/mcmc-jags/files/Manuals/4.x/

]])



-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))

-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))

-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))

-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))

