-- -*- lua -*-


------------------------------------------------------------------------
-- WebLogo 2.8.2
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
whatis("Name:        WebLogo")
whatis("Version:     2.8.2")
whatis("Category:    graphics")
whatis("Description: Genrate sequence logos")
whatis("URL:         http://weblogo.berkeley.edu/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use WebLogo 2.8.2.


Product Description
-------------------
WebLogo is a web based application designed to make the generation 
of sequence logos as easy and painless as possible.

Sequence logos are a graphical representation of an amino acid or 
nucleic acid multiple sequence alignment developed by Tom Schneider 
and Mike Stephens. Each logo consists of stacks of symbols, one 
stack for each position in the sequence. The overall height of the 
stack indicates the sequence conservation at that position, while 
the height of symbols within the stack indicates the relative 
frequency of each amino or nucleic acid at that position. In 
general, a sequence logo provides a richer and more precise 
description of, for example, a binding site, than would a consensus 
sequence. 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://weblogo.berkeley.edu/README

]])


-- PATH
prepend_path('PATH', installDir)
