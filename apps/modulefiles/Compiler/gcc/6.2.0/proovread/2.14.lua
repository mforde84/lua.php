-- -*- lua -*-


------------------------------------------------------------------------
-- proovread 2.14
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
whatis("Name:        proovread")
whatis("Version:     2.14")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/BioInf-Wuerzburg/proovread#advanced-configuration")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use proovread 2.14


Product Description
-------------------



Dependencies
------------
gcc/6.2.0
blast/2.6.0
samtools/1.5
perl/5.24.0


Documentation
-------------
Online documentation is available at:

https://github.com/BioInf-Wuerzburg/proovread#advanced-configuration

]])

-- PREREQUISITE
load("blast/2.6.0")
load("samtools/1.5")
load("perl/5.24.0")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"util/SeqChunker/bin"))
prepend_path('PATH', pathJoin(installDir,"util/SeqFilter/bin"))
prepend_path('PATH', pathJoin(installDir,"util/blasr-1.3.1"))
prepend_path('PATH', pathJoin(installDir,"util/bwa"))
prepend_path('PATH', pathJoin(installDir,"util/shrimp-2.2.3"))
    

prepend_path('PERL5LIB', pathJoin(installDir,"lib"))
