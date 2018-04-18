-- -*- lua -*-


------------------------------------------------------------------------
-- tablemaker 2.1.1
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
whatis("Name:        tablemaker")
whatis("Version:     2.1.1")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/leekgroup/tablemaker")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use tablemaker 2.1.1


Product Description
-------------------
This is a modified version of Cufflinks (called "tablemaker" from here on)
which has a new output option which makes the program generate a set of tab 
delimited files providing raw read counts and coverage information 
for the given reference transcripts. These new output files are obtained 
by running the tablemaker program using the -W option which requires 
the -G option specifying the reference transcripts to quantify 
(see Cufflinks' manual about the -G option). Thus, the -W option makes 
tablemaker generate a set of *.ctab files in the output directory, 
as documented below.


Dependencies
------------
gcc/6.2.0
boost/1.55.0
zlib/1.2.8
samtools/0.1.19
eigen/3.3.2 


Documentation
-------------
Online documentation  is available at:

https://github.com/leekgroup/tablemaker/tree/master/tablemaker-2.1.1

]])

-- PREREQUISITE
load("boost/1.55.0")
load("zlib/1.2.8")
load("samtools/0.1.19")
load("eigen/3.3.2")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
