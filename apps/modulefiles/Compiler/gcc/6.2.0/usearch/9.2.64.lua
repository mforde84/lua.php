-- -*- lua -*-


------------------------------------------------------------------------
-- usearch 9.2.64
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
whatis("Name:        usearch")
whatis("Version:     9.2.64")
whatis("Category:    analysis")
whatis("Description: Sequence analysis tool")
whatis("URL:         http://www.drive5.com/usearch/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use usearch 9.2.64


Product Description
-------------------
USEARCH is a unique sequence analysis tool with thousands of users world-wide. USEARCH offers 
search and clustering algorithms that are often orders of magnitude faster than BLAST. 

Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

http://www.drive5.com/usearch/manual/

]])



-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))

