-- -*- lua -*-


------------------------------------------------------------------------
-- somatic-sniper 1.0.5.0
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
whatis("Name:        somatic-sniper")
whatis("Version:     1.0.5.0")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/genome/somatic-sniper")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use somatic-sniper 1.0.5.0


Product Description
-------------------
The purpose of this program is to identify single nucleotide positions 
that are different between tumor and normal (or, in theory, any two 
bam files). It takes a tumor bam and a normal bam and compares the two 
to determine the differences. It outputs a file in a format very similar 
to Samtools consensus format. It uses the genotype likelihood model of 
MAQ (as implemented in Samtools) and then calculates the probability 
that the tumor and normal genotypes are different. This probability is 
reported as a somatic score. The somatic score is the Phred-scaled 
probability (between 0 to 255) that the Tumor and Normal genotypes are 
not different where 0 means there is no probability that the genotypes 
are different and 255 means there is a probability of 1 -  10^(255/-10) 
that the genotypes are different between tumor and normal. This is 
consistent with how the SAM format reports such probabilities.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8


Documentation
-------------
Online documentation is available at:

https://github.com/genome/somatic-sniper/blob/master/gmt/documentation.md

]])

-- PREREQUISITE
load("zlib/1.2.8")
load("perl/5.24.0")
load("bam-readcount/0.8.0")

-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"scripts"))


