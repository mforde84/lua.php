-- -*- lua -*-


------------------------------------------------------------------------
-- breakdancer 1.1
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
whatis("Name:        breakdancer")
whatis("Version:     1.1")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://breakdancer.sourceforge.net/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use breakdancer 1.1


Product Description
-------------------
BreakDancer-1.1, released under GPLv3, is a Perl/Cpp package that 
provides genome-wide detection of structural variants from next 
generation paired-end sequencing reads. It includes two 
complementary programs.


Dependencies
------------
gcc/6.2.0
samtools/0.1.19

Documentation
-------------
Online documentation is available at:

http://breakdancer.sourceforge.net/

]])


-- PREREQUISITE
load("samtools/0.1.19")
load("perl/5.24.0")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
