-- -*- lua -*-


------------------------------------------------------------------------
-- kentUtils 302.1.0
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
whatis("Name:        kentUtils")
whatis("Version:     302.1.0")
whatis("Category:    toolkit")
whatis("Description: Toolkit of command-line bioinformatics tools.")
whatis("URL:         https://github.com/ENCODE-DCC/kentUtils")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use kentUtils 302.1.0.


Product Description
-------------------
The command line bioinformatic utilities from Jim Kent. This is not 
the genome browser.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://github.com/ENCODE-DCC/kentUtils/blob/master/README.md


]])


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
