-- -*- lua -*-


------------------------------------------------------------------------
-- perl 5.24.0 
-- Mike Jarsulic 
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
whatis("Name:        perl")
whatis("Version:     5.24.0")
whatis("Category:    programming, interpreter")
whatis("Description: Perl programming language")
whatis("URL:         https://www.perl.org")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Perl 5.24.0 


Product Description
-------------------
Perl is a family of high-level, general-purpose, interpreted, dynamic
programming languages.


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

https://www.perl.org/docs.html

]])


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('PERL5LIB', pathJoin(installDir,"lib/",version))
prepend_path('PERL5LIB', pathJoin(installDir,"lib/site_perl",version))
prepend_path('PERL5LIB', pathJoin(installDir,"lib/site_perl",version,"x86_64-linux-thread-multi"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"man"))

