-- -*- lua -*-


------------------------------------------------------------------------
-- qctool 2.0
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
whatis("Name:        qctool")
whatis("Version:     2.0")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://www.well.ox.ac.uk/~gav/qctool_v2/#overview")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use qctool 2.0.


Product Description
-------------------
QCTOOL is a command-line utility program for manipulation and quality control 
of gwas datasets and other genome-wide data. QCTOOL can be used

  * To compute per-variant and per-sample QC metrics.
  * To filter out samples or variants.
  * To merge datasets in various ways.
  * To convert dataset between file formats. (In particular QCTOOL can read and write BGEN files, including full support for BGEN v1.2).
  * To manipulate datasets in various ways - e.g. by updating data fields or aligning alleles to a reference sequence using an externally-supplied strand file.
  * To compare genotypes for individuals typed or imputed or phased in different datasets.
  * To compute between-sample relatedness and principal components.

QCTOOL is designed to be as easy-to-use as possible and we hope you find it so.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8


Documentation
-------------
Online documentation is available at:

https://www.ncbi.nlm.nih.gov/pubmed/26708335

]])

-- PREREQUISITE
load("zlib/1.2.8")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
