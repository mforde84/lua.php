-- -*- lua -*-


------------------------------------------------------------------------
-- methylQA 0.1.5
-- Tony Aburaad
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)


-- Whatis Message
whatis("Name:        methylQA")
whatis("Version:     0.1.5")
whatis("Category:    toolset")
whatis("Description: Methylation sequence data quality assessment tool")
whatis("URL:         https://sourceforge.net/projects/methylqa/files/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use methylQA


Product Description
-------------------
Methylation sequence data quality assessment tool.

Dependencies
------------
gcc/4.9.4


Documentation
-------------
Online documentation is available at:

https://sourceforge.net/projects/methylqa/files/

]])



-- Executables
prepend_path('PATH', installDir)


