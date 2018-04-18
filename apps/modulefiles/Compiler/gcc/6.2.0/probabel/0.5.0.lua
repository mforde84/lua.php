-- -*- lua -*-


------------------------------------------------------------------------
-- ProbABEL 0.5.0
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
whatis("Name:        ProbABEL")
whatis("Version:     0.5.0")
whatis("Category:    gwas")
whatis("Description: Genome-wide association analysis of imputed genetic data.")
whatis("URL:         http://www.genabel.org/packages/ProbABEL")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use ProbABEL 0.5.0


Product Description
-------------------
Software package for the analysis of genome-wide imputed SNP data and 
quantitative, binary, and time-till-event outcomes under linear, 
logistic, and Cox proportional hazards models, respectively. For 
quantitative traits, the package also implements a fast two-step mixed 
model-based score test for association in samples with differential 
relationships, facilitating analysis in family-based studies, studies 
performed in human genetically isolated populations and outbred animal 
populations.



Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://www.genabel.org/sites/default/files/pdfs/ProbABEL_manual.pdf

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man Path
prepend_path('MANPATH', pathJoin(installDir,"share/man"))


