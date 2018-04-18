-- -*- lua -*-


------------------------------------------------------------------------
-- SHAPEIT 2.12
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
whatis("Name:        SHAPEIT")
whatis("Version:     2.12")
whatis("Category:    toolset")
whatis("Description: SHAPEIT is a fast and accurate method for estimation of haplotypes (aka phasing) from genotype or sequencing data.")
whatis("URL:         https://mathgen.stats.ox.ac.uk/genetics_software/shapeit/shapeit.html#home")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use SHAPEIT 2.12


Product Description
-------------------
SHAPEIT is a fast and accurate method for estimation of haplotypes 
(aka phasing) from genotype or sequencing data.

SHAPEIT has several notable features:

- Linear complexity with the number of SNPs and conditioning haplotypes.
- Whole chromosome GWAS scale datasets can be phased in a single run.
- Phasing individuals with any level of relatedness
- Phasing is multi-threaded to tailor computational times to your resources.
- Handles X chromosomes phasing.
- Phasing using a reference panel (eg.1,000 Genomes) to aid phasing
- Ideal for pre-phasing imputation together with IMPUTE2


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://mathgen.stats.ox.ac.uk/genetics_software/shapeit/shapeit.html#home

]])


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))


