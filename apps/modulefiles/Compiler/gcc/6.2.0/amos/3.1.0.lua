-- -*- lua -*-


------------------------------------------------------------------------
-- AMOS 3.1.0
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
whatis("Name:        AMOS")
whatis("Version:     3.1.0")
whatis("Category:    toolset")
whatis("Description: Software infrastructure for developing assembly tools.")
whatis("URL:         http://amos.sourceforge.net/wiki/index.php/AMOS_Getting_Started")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use AMOS 3.1.0


Product Description
-------------------
Is AMOS an assembler? is one of the first questions we are asked. The short answer is no. AMOS is 
not an assembler, rather a software infrastructure for developing assembly tools. If you are only 
interested in running an off-the-shelf assembler on your shotgun data, do not despair, AMOS provides 
two such assemblers: AMOScmp - a comparative assembler; and Minimus - a basic assembler for small datasets. 
However it is important to realize that, with a little bit of programming, you can use AMOS to put together 
your own shotgun assembler customized for the specific characteristics of your data.

Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

http://amos.sourceforge.net/wiki/index.php/AMOS_Getting_Started

]])



-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/doc"))

