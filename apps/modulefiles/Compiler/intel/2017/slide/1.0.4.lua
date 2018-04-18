-- -*- lua -*-


------------------------------------------------------------------------
-- Slide 1.0.4
-- Tony Aburaad
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "intel-2017"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        Slide")
whatis("Version:     1.0.4")
whatis("Category:    toolset")
whatis("Description: Slide is a multivariate normal distribution (MVN)-based multiple hypothesis testing correction method.")
whatis("URL:         http://slide.cs.ucla.edu/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Slide.


Product Description
-------------------
SLIDE (Sliding-window method for Locally Inter-correlated markers with asymptotic Distribution Errors corrected) 
is a multivariate normal distribution (MVN)-based multiple hypothesis testing correction method. SLIDE shows a 
near identical accuracy to the gold standard, the permutation test, and is much faster.

Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

http://slide.cs.ucla.edu/guide_slide.html

]])



-- PATH
prepend_path('PATH', installDir)


