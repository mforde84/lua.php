-- -*- lua -*-


------------------------------------------------------------------------
-- PolyPhen 2.2.2
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)


-- Whatis Message
whatis("Name:        PolyPhen")
whatis("Version:     2.2.2")
whatis("Category:    annotation")
whatis("Description: Tool for annotating coding nonsynonymous SNPs.")
whatis("URL:         http://genetics.bwh.harvard.edu/pph2/dokuwiki/start")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use PolyPhen 2.2.2


Product Description
-------------------
PolyPhen-2 (Polymorphism Phenotyping v2) is a software tool which 
predicts possible impact of amino acid substitutions on the 
structure and function of human proteins using straightforward 
physical and evolutionary comparative considerations. 


Dependencies
------------
gcc/4.9.4
perl/5.18.4
java-jdk/1.7.0_80


Documentation
-------------
Online documentation is available at:

http://genetics.bwh.harvard.edu/pph2/dokuwiki/_media/hg0720.pdf

]])


-- Prerequisites
load("perl/5.18.4")
load("java-jdk/1.7.0_80")


-- Environment Variables
setenv('PPH', installDir)

-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


