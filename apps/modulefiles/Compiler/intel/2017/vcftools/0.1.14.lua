-- -*- lua -*-


------------------------------------------------------------------------
-- vcftools 0.1.14
-- Tony Aburaad
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
whatis("Name:        vcftools")
whatis("Version:     0.1.14")
whatis("Category:    library")
whatis("Description: A set of tools written in Perl and C++ for working with VCF files, such as those generated by the 1000 Genomes Project.")
whatis("URL:         https://github.com/vcftools/vcftools")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use vcftools 0.1.14


Product Description
-------------------
vcftools is a suite of functions for use on genetic variation data in the form of VCF and BCF files. 
The tools provided will be used mainly to summarize data, run calculations on data, filter out data, 
and convert data into other useful file formats.

Dependencies
------------
intel/2017
perl/5.24.0
samtools/1.5


Documentation
-------------
Online documentation is available at:

https://vcftools.github.io/examples.html

]])

--MODULES
load("zlib/1.2.8")
load("perl/5.24.0")
load("samtools/1.5")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))

-- CPATH
prepend_path('CPATH', pathJoin(installDir,"include"))

-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('PERL5LIB', pathJoin(installDir,"lib/site_perl/5.24.0"))