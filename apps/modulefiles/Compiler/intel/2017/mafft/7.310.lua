-- -*- lua -*-


------------------------------------------------------------------------
-- MAFFT 7.310
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
whatis("Name:        MAFFT")
whatis("Version:     7.310")
whatis("Category:    alignment")
whatis("Description: A multiple sequence alignment program.")
whatis("URL:         http://mafft.cbrc.jp/alignment/software/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use MAFFT 7.310.


Product Description
-------------------
MAFFT is a multiple sequence alignment program for unix-like operating 
systems. It offers a range of multiple alignment methods, L-INS-i 
(accurate; for alignment of <~200 sequences), FFT-NS-2 (fast; for 
alignment of <~30,000 sequences), etc. 


Dependencies
------------
intel/2017


Documentation
-------------
The following man pages are available:
mafft-homologs(1), mafft(1)

Online documentation is available at:

http://mafft.cbrc.jp/alignment/software/tips0.html

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man Pages
prepend_path('MANPATH', pathJoin(installDir,"man"))


