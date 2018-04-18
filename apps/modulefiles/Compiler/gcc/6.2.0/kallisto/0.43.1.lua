-- -*- lua -*-


------------------------------------------------------------------------
-- Kallisto 0.43.1
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
whatis("Name:        Kallisto")
whatis("Version:     0.43.1")
whatis("Category:    rna-seq")
whatis("Description: Quantify abundances of transcripts from RNA-Seq data.")
whatis("URL:         https://pachterlab.github.io/kallisto/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Kallisto 0.43.1


Product Description
-------------------
Kallisto is a program for quantifying abundances of transcripts from 
RNA-Seq data, or more generally of target sequences using high-throughput 
sequencing reads. It is based on the novel idea of pseudoalignment for 
rapidly determining the compatibility of reads with targets, without the 
need for alignment. On benchmarks with standard RNA-Seq data, Kallisto can 
quantify 30 million human reads in less than 3 minutes on a Mac desktop 
computer using only the read sequences and a transcriptome index that 
itself takes less than 10 minutes to build. Pseudoalignment of reads 
preserves the key information needed for quantification, and Kallisto is 
therefore not only fast, but also as accurate as existing quantification 
tools. In fact, because the pseudoalignment procedure is robust to errors 
in the reads, in many benchmarks Kallisto significantly outperforms existing tools.


Dependencies
------------
gcc/6.2.0
zlib/1.2.8
hdf5/1.10.0


Documentation
-------------

Online documentation is available at:

https://pachterlab.github.io/kallisto/manual

]])

load("zlib/1.2.8")
load("hdf5/1.10.0")

-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


