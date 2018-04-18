-- -*- lua -*-


------------------------------------------------------------------------
-- ghostscript 9.20
-- Mike Jarsulic 
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
whatis("Name:        ghostscript")
whatis("Version:     9.20")
whatis("Category:    documentation")
whatis("Description: An interpreter for the PostScript language and for PDF.")
whatis("URL:         https://ghostscript.com/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use ghostscript 9.20


Product Description
-------------------
Ghostscript is an interpreter for PostScript and Portable Document 
Format (PDF) files. It is available both under the GNU GPL Affero 
license and for commercial licensing from Artifex. It has been under 
active development for over 20 years and has been ported to many 
different systems during this time.

Ghostscript consists of a PostScript interpreter layer, and a graphics 
library.


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

https://ghostscript.com/doc/current/Readme.htm

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man Pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))


