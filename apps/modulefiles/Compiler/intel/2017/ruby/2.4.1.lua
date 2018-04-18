-- -*- lua -*-


------------------------------------------------------------------------
-- ruby 2.4.1
-- Qiannan Miao 
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
whatis("Name:        ruby")
whatis("Version:     2.4.1")
whatis("Category:    programming, interpreter")
whatis("Description: Ruby programming language")
whatis("URL:         https://www.ruby-lang.org/en/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Ruby 2.4.1


Product Description
-------------------
Ruby is a dynamic, open source programming language with a focus on 
simplicity and productivity. It has an elegant syntax that is natural 
to read and easy to write.


Dependencies
------------
intel/2017


Documentation
-------------
Man pages of interest:

ruby(1)

Online documentation is available at:

https://www.ruby-lang.org/en/documentation/

]])


-- Prerequisites

-- Headers
prepend_path('CPATH', pathJoin(installDir,"include/ruby-2.4.0"))
prepend_path('CPATH', pathJoin(installDir,"include/ruby-2.4.0/ruby"))
prepend_path('CPATH', pathJoin(installDir,"include/ruby-2.4.0/x86_64-linux/ruby"))


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))

