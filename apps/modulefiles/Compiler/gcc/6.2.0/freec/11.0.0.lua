-- -*- lua -*-


------------------------------------------------------------------------
-- freec v11.0.0
-- Martin Forde
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
whatis("Name:        freec")
whatis("Version:     11.0.0")
whatis("Category:    CNV")
whatis("Description: A tool for detection of copy-number changes and allelic imbalances.")
whatis("URL:         http://boevalab.com/FREEC/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use freec 11.0.0.


Product Description
-------------------
Control-FREEC automatically computes, normalizes, segments copy number 
and beta allele frequency (BAF) profiles, then calls copy number alterations 
and LOH. The control (matched normal) sample is optional for whole genome 
sequencing data but mandatory for whole exome or targeted sequencing data. 
For whole genome sequencing data analysis, the program can also use 
mappability data (files created by GEM). 

Usage
-----
When this module is loaded, the environmental variable FREEC_PATH is available.

Example:

$ freec
$ ls -l $FREEC_PATH
drwxr-xr-x 2 root cri-cri_server_administrators  23 Mar  5 11:55 bin
drwxr-xr-x 2 root cri-cri_server_administrators  66 Mar  5 11:55 data
drwxr-xr-x 5 root cri-cri_server_administrators 443 Mar  5 12:09 mappability
drwxr-xr-x 2 root cri-cri_server_administrators 313 Mar  5 11:55 scripts
drwxr-xr-x 2 root cri-cri_server_administrators 249 Mar  5 12:12 snp

Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://boevalab.com/FREEC/tutorial.html

]])


-- CRAMTOOLS Environment Variable
setenv("FREEC_PATH",installDir)

-- Executables 
prepend_path('PATH',pathJoin(installDir,"bin"))
prepend_path('PATH',pathJoin(installDir,"data"))
prepend_path('PATH',pathJoin(installDir,"scripts"))
