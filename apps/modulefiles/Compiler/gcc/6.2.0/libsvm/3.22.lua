-- -*- lua -*-


------------------------------------------------------------------------
-- Libsvm 3.22
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
whatis("Name:        Libsvm")
whatis("Version:     3.22")
whatis("Category:    toolset")
whatis("Description: Software for SVM classification and regression.")
whatis("URL:         https://github.com/cjlin1/libsvm")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use libvsm


Product Description
-------------------
Libsvm is a simple, easy-to-use, and efficient software for SVM
classification and regression. It solves C-SVM classification, nu-SVM
classification, one-class-SVM, epsilon-SVM regression, and nu-SVM
regression. It also provides an automatic model selection tool for
C-SVM classification.


Dependencies
------------
gcc/6.2.0

Use
_________
Run libvsm -flags

Documentation
-------------
Online documentation is available at:

https://github.com/cjlin1/libsvm

]])


-- PATH
prepend_path('PATH', installDir)


