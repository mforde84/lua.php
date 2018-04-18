-- -*- lua -*-


------------------------------------------------------------------------
-- Minimac3 1.0.13
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
whatis("Name:        Minimac3")
whatis("Version:     1.0.13")
whatis("Category:    imputation")
whatis("Description: Lower memory and more computationally efficient implementation of minimac2.")
whatis("URL:         http://genome.sph.umich.edu/wiki/Minimac3")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Minimac3 1.0.13.


Product Description
-------------------
Minimac3 is a lower memory and more computationally efficient 
implementation of the genotype imputation algorithms in minimac and 
minimac2. Minimac3 is designed to handle very large reference panels 
in a more computationally efficient way with no loss of accuracy. It 
accomplishes this by identifying repeat haplotype patterns and using 
these to simplify the underlying calculations, with no loss of 
accuracy.

Minimac3 uses M3VCF files (customized minimac3 VCF files) to store 
reference panel information in a compact form, thus saving on memory 
and time required to read large datasets. Users can use Minimac3 to 
convert standard VCF files to M3VCF files. M3VCF files can also store 
pre-calculated estimates of recombination fraction and error, which 
speeds up later rounds of imputation. Minimac3 outputs results in the 
form of standard VCF files for easy data manipulation in downstream 
analysis. 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
Online documentation is available at:

http://genome.sph.umich.edu/wiki/Minimac3_Usage


]])


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
