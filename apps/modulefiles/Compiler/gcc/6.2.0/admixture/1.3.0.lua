-- -*- lua -*-


------------------------------------------------------------------------
-- admixture 1.3.0
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
whatis("Name:        admixture")
whatis("Version:     1.3.0")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://www.genetics.ucla.edu/software/admixture/download.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use admixture 1.3.0


Product Description
-------------------
ADMIXTURE is a software tool for maximum likelihood estimation of individual 
ancestries from multilocus SNP genotype datasets. It uses the same statistical 
model as STRUCTURE but calculates estimates much more rapidly using a fast 
numerical optimization algorithm.

Specifically, ADMIXTURE uses a block relaxation approach to alternately update 
allele frequency and ancestry fraction parameters. Each block update is handled 
by solving a large number of independent convex optimization problems, which are 
tackled using a fast sequential quadratic programming algorithm. Convergence of 
the algorithm is accelerated using a novel quasi-Newton acceleration method. 
The algorithm outperforms EM algorithms and MCMC sampling methods by a wide 
margin. For details, see our publications.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://www.genetics.ucla.edu/software/admixture/admixture-manual.pdf

]])

-- PREREQUISITE

-- PATH
prepend_path('PATH', pathJoin(installDir))
