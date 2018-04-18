-- -*- lua -*-


------------------------------------------------------------------------
-- postgresql 9.6.5
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
whatis("Name:        postgresql")
whatis("Version:     9.6.5")
whatis("Category:    database")
whatis("Description: Open source relational database system.")
whatis("URL:         https://www.postgresql.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use postgresql 9.6.5


Product Description
-------------------
PostgreSQL is a powerful, open source object-relational database system. 
It has more than 15 years of active development and a proven 
architecture that has earned it a strong reputation for reliability, 
data integrity, and correctness. It runs on all major operating systems, 
including Linux, UNIX (AIX, BSD, HP-UX, SGI IRIX, macOS, Solaris, Tru64), 
and Windows. It is fully ACID compliant, has full support for foreign 
keys, joins, views, triggers, and stored procedures (in multiple 
languages). It includes most SQL:2008 data types, including INTEGER, 
NUMERIC, BOOLEAN, CHAR, VARCHAR, DATE, INTERVAL, and TIMESTAMP. It also 
supports storage of binary large objects, including pictures, sounds, or 
video. It has native programming interfaces for C/C++, Java, .Net, Perl, 
Python, Ruby, Tcl, ODBC, among others, and exceptional documentation.


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

https://www.postgresql.org/docs/

]])


-- Prerequisites


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages

