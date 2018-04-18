-- -*- lua -*-


------------------------------------------------------------------------
-- gnutls 3.5.9
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
whatis("Name:        gnutls")
whatis("Version:     3.5.9")
whatis("Category:    ")
whatis("Description: ")
whatis("URL:         http://www.gnutls.org/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use gnutls 3.5.9


Product Description
-------------------
GnuTLS is a secure communications library implementing the SSL, TLS 
and DTLS protocols and technologies around them. It provides a simple 
C language application programming interface (API) to access the 
secure communications protocols as well as APIs to parse and write 
X.509, PKCS #12, and other required structures.

The project strives to provide a secure communications back-end, 
simple to use and integrated with the rest of the base Linux libraries. 
A back-end designed to work and be secure out of the box, keeping the 
TLS and PKI complexity outside the applications.


Dependencies
------------
gcc/6.2.0
nettle/3.3


Documentation
-------------
Online documentation is available at:

http://www.gnutls.org/documentation.html

]])


-- Prerequisites
load("nettle/3.3")


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))
prepend_path('CPATH', pathJoin(installDir,"include/gnutls"))


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))

