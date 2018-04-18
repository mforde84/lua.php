-- -*- lua -*-


------------------------------------------------------------------------
-- MUMmer 3.23
-- Tony Aburaad 
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
whatis("Name:        MUMmer")
whatis("Version:     3.23")
whatis("Category:    alignment")
whatis("Description: MUMmer is a system for rapidly aligning entire genomes")
whatis("URL:         http://mummer.sourceforge.net/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use MUMmer 3.23


Product Description
-------------------
MUMmer is a system for rapidly aligning entire genomes, whether in 
complete or draft form. For example, MUMmer 3.0 can find all 
20-basepair or longer exact matches between a pair of 5-megabase 
genomes in 13.7 seconds, using 78 MB of memory, on a 2.4 GHz Linux 
desktop computer. MUMmer can also align incomplete genomes.


Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

http://mummer.sourceforge.net/manual/

]])



-- Executables
prepend_path('PATH', installDir)
prepend_path('NUCMER', pathJoin(installDir,'nucmer'))

