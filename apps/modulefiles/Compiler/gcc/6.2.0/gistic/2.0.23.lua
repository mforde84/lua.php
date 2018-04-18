-- -*- lua -*-


------------------------------------------------------------------------
-- GISTIC 2.0.23
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
whatis("Name:        gistic")
whatis("Version:     2.0.23")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://portals.broadinstitute.org/cgi-bin/cancer/publications/pub_paper.cgi?mode=view&paper_id=216&p=t")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use GISTIC 2.0.23


Product Description
-------------------


Dependencies
------------
gcc/6.2.0
matlab-mcr/2014a


Documentation
-------------
Online documentation is available at:

http://portals.broadinstitute.org/cgi-bin/cancer/publications/pub_paper.cgi?mode=view&paper_id=216&p=t

]])

-- PREREQUISITE
load("matlab-mcr/2014a")


-- PATH
prepend_path('PATH', pathJoin(installDir))
