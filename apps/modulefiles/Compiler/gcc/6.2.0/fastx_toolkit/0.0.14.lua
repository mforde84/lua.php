-- -*- lua -*-


------------------------------------------------------------------------
-- fastx_toolkit 0.0.14
-- Tony Aburaad
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
whatis("Name:        fastx_toolkit")
whatis("Version:     0.0.14")
whatis("Category:    toolkit")
whatis("Description: A collection of command line tools for Short-Reads FASTA/FASTQ files preprocessing")
whatis("URL:         http://hannonlab.cshl.edu/fastx_toolkit/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Python 3.6.0


Product Description
-------------------
The FASTX-Toolkit is a collection of command line tools for Short-Reads FASTA/FASTQ files preprocessing.
Next-Generation sequencing machines usually produce FASTA or FASTQ files, containing multiple short-reads 
sequences (possibly with quality information).

The main processing of such FASTA/FASTQ files is mapping (aka aligning) the sequences to reference genomes or 
other databases using specialized programs. Example of such mapping programs are: Blat, SHRiMP, LastZ, MAQ and many many others.

Dependencies
------------
gcc/6.2.0


Documentation
-------------
Man pages of interest:

python3(1)

Online documentation is available at:

http://hannonlab.cshl.edu/fastx_toolkit/commandline.html

]])




-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))



