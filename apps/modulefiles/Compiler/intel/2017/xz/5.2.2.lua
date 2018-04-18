-- -*- lua -*-


------------------------------------------------------------------------
-- XZ Utils 5.2.2
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
whatis("Name:        XZ Utils")
whatis("Version:     5.2.2")
whatis("Category:    compression, library")
whatis("Description: Library for data compression")
whatis("URL:         http://tukaani.org/xz")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use XZ Utils 5.2.2 


Product Description
-------------------
XZ Utils is free general-purpose data compression software with a 
high compression ratio. XZ Utils were written for POSIX-like systems, 
but also work on some not-so-POSIX systems. XZ Utils are the 
successor to LZMA Utils.

The core of the XZ Utils compression code is based on LZMA SDK, but 
it has been modified quite a lot to be suitable for XZ Utils. The 
primary compression algorithm is currently LZMA2, which is used 
inside the .xz container format. With typical files, XZ Utils create 
30% smaller output than gzip and 15% smaller output than bzip2.

XZ Utils consist of several components:

  * liblzma is a compression library with an API similar to that of zlib.
  * xz is a command line tool with syntax similar to that of gzip.
  * xzdec is a decompression-only tool smaller than the full-featured xz tool.
  * A set of shell scripts (xzgrep, xzdiff, etc.) have been adapted from gzip 
    to ease viewing, grepping, and comparing compressed files.
  * Emulation of command line tools of LZMA Utils eases transition from LZMA 
    Utils to XZ Utils.


Dependencies
------------
intel/2017


Documentation
-------------
The following man pages are available:

lzcat(1), lzdiff(1), lzfgrep(1), lzless(1), lzmadec(1), lzmore(1), unxz(1)      
xzcat(1), xzdec(1),  xzegrep(1), xzgrep(1), xzmore(1), lzcmp(1), lzegrep(1), 
lzgrep(1), lzma(1), lzmainfo(1), unlzma(1), xz(1), xzcmp(1), xzdiff(1), 
xzfgrep(1), xzless(1)


]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))


