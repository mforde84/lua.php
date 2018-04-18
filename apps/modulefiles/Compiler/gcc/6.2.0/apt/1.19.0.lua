-- -*- lua -*-


------------------------------------------------------------------------
-- APT 1.19.0
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
whatis("Name:        APT")
whatis("Version:     1.19.0")
whatis("Category:    toolkit")
whatis("Description: Command line programs that implement algorithms for analyzing and working with Affymetrix GeneChip arrays.")
whatis("URL:         http://www.affymetrix.com/estore/partners_programs/programs/developer/tools/powertools.affx")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use APT 1.19.0


Product Description
-------------------
Affymetrix Power Tools (APT) are a set of cross-platform command line 
programs that implement algorithms for analyzing and working with 
Affymetrix GeneChip arrays. APT is an open-source project licensed under 
the GNU General Public License (GPL). APT programs are intended for 
"power users" who prefer programs that can be utilized in scripting 
environments and are sophisticated enough to handle the complexity of 
extra features and functionality. The vision is that APT provides a 
platform for developing and deploying new algorithms without waiting for 
the GUI implementations. 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://media.affymetrix.com/support/developer/powertools/changelog/index.html

]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


