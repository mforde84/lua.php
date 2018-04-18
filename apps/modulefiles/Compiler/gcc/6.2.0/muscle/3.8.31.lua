-- -*- lua -*-


------------------------------------------------------------------------
-- MUSCLE 3.8.31
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
whatis("Name:        MUSCLE")
whatis("Version:     3.8.31")
whatis("Category:    alignment")
whatis("Description: Multiple sequence alignment with high accuracy and high throughput")
whatis("URL:         http://www.drive5.com/muscle/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use MUSCLE


Product Description
-------------------
MUSCLE is one of the best-performing multiple alignment programs 
according to published benchmark tests, with accuracy and speed that 
are consistently better than CLUSTALW. MUSCLE can align hundreds of 
sequences in seconds. 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://www.drive5.com/muscle/manual/

]])



-- PATH
prepend_path('PATH', installDir)
