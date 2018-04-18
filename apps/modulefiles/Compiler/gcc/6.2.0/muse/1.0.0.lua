-- -*- lua -*-


------------------------------------------------------------------------
-- MuSE 1.0.0
-- Martin Forde
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
whatis("Name:        MuSE")
whatis("Version:     1.0.0")
whatis("Category:    variants")
whatis("Description: Somatic variant caller.")
whatis("URL:         http://www.regulatory-genomics.org/thor-2/basic-intrstruction/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use MuSE 1.0.0.


Product Description
-------------------
The detection of somatic point mutations is a key component of cancer genomic research, 
which has been rapidly developing since next-generation sequencing (NGS) technology 
revealed its potential for describing genetic alterations in cancer. We present MuSE, 
a novel approach to mutation calling based on the F81 Markov substitution model for 
molecular evolution [1], which models the evolution of the reference allele to the 
allelic composition of the matched tumor and normal tissue at each genomic locus. To 
improve overall accuracy, we further adopt a sample-specific error model to identify 
cutoffs, reflecting the variation in tumor heterogeneity among samples. 

Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://bioinformatics.mdanderson.org/main/MuSE

]])

-- PATH
prepend_path('PATH', pathJoin(installDir))
