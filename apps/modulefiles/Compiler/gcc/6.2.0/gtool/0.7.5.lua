-- -*- lua -*-


------------------------------------------------------------------------
-- GTOOL 0.7.5
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
whatis("Name:        GTOOL")
whatis("Version:     0.7.5")
whatis("Category:    imputation")
whatis("Description: Program for transforming sets of genotype data for use with the programs SNPTEST and IMPUTE.")
whatis("URL:         http://www.well.ox.ac.uk/~cfreeman/software/gwas/gtool.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use GTOOL 0.7.5


Product Description
-------------------
GTOOL is a program for transforming sets of genotype data for use with 
the programs SNPTEST and IMPUTE.

GTOOL can be used to:

  * generate subsets of genotype data,
  * to convert genotype data between the PED file format and the file 
    format used by SNPTEST and IMPUTE,
  * merge genotype datasets together,
  * orient genotype data according to a strand file.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://www.well.ox.ac.uk/~cfreeman/software/gwas/gtool.html

]])


-- Executables
prepend_path('PATH', installDir)


