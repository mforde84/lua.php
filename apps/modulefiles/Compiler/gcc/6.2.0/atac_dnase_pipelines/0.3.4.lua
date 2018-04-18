-- -*- lua -*-


------------------------------------------------------------------------
-- atac_dnase_pipelines 0.3.4
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
whatis("Name:        atac_dnase_pipelines")
whatis("Version:     0.3.4")
whatis("Category:    pipeline")
whatis("Description: Pipeline for processing of ATAC-seq or DNase-seq data.")
whatis("URL:         https://github.com/kundajelab/atac_dnase_pipelines")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use atac_dnase_pipelines


Product Description
-------------------
This pipeline is designed for automated end-to-end quality control and 
processing of ATAC-seq or DNase-seq data. The pipeline can be run 
end-to-end i.e. starting from raw FASTQ files all the way to peak 
calling and signal track generation; or can be started from intermediate 
stages as well (e.g. alignment files). The pipeline supports single-end 
or paired-end ATAC-seq or DNase-seq data (with or without replicates). 
The pipeline produces pretty HTML reports that include quality control 
measures specifically designed for ATAC-seq and DNase-seq data, analysis 
of reproducibility, stringent and relaxed thresholding of peaks, 
fold-enrichment and pvalue signal tracks. The pipeline also supports 
detailed error reporting and easy resuming of runs. The pipeline has 
been tested on human, mouse and yeast ATAC-seq data and human and mouse 
DNase-seq data.


Dependencies
------------
gcc/6.2.0
bds/0.99999e
miniconda3/4.3.21

Documentation
-------------
Online documentation is available at:

https://github.com/kundajelab/atac_dnase_pipelines/blob/master/README.md

]])


-- Prerequisites
load("bds/0.99999e")
load("miniconda3/4.3.21")


-- Executables
prepend_path('PATH', installDir)


