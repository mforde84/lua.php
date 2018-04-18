-- -*- lua -*-


------------------------------------------------------------------------
-- FLASH
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
whatis("Name:        FLASH2")
whatis("Version:     1.2.11")
whatis("Category:    toolset")
whatis("Description: Tool to merge paired-end reads")
whatis("URL:         https://sourceforge.net/projects/flashpage/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use FLASH


Product Description
-------------------
FLASH, Fast Length Adjustment of SHort reads, is a very accurate fast 
tool to merge paired-end reads from fragments that are shorter than 
twice the length of reads. The extended length of reads has a significant 
positive impact on improvement of genome assemblies.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://sourceforge.net/projects/flashpage/

]])


-- PREREQUISITE
load("zlib/1.2.8")


-- PATH
prepend_path('PATH', installDir)


