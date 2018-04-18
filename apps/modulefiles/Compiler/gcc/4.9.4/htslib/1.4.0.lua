-- -*- lua -*-


------------------------------------------------------------------------
-- htslib 1.4.0
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)


-- Whatis Message
whatis("Name:        htslib")
whatis("Version:     1.4.0")
whatis("Category:    library")
whatis("Description: API for accessing common file formats used in high-throughput sequencing.")
whatis("URL:         https://github.com/samtools/htslib")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use htslib 1.4.0.


Product Description
-------------------
HTSlib is an implementation of a unified C library for accessing 
common file formats, such as SAM, CRAM and VCF, used for 
high-throughput sequencing data, and is the core library used by 
samtools and bcftools. HTSlib only depends on zlib. It is known to 
be compatible with gcc, g++ and clang.

HTSlib implements a generalized BAM index, with file extension 
.csi (coordinate-sorted index). The HTSlib file reader first looks 
for the new index and then for the old if the new index is absent.

This project also includes the popular tabix indexer, which indexes 
both .tbi and .csi formats, and the bgzip compression utility.


Dependencies
------------
gcc/4.9.4
zlib/1.2.8
bzip2/1.0.6  
xz/5.2.2


Documentation
-------------
Man pages of interest:

htsfile(1), tabix(1), faidx(5), sam(5), vcf(5)


Online documentation is available at:

http://www.htslib.org/doc/#manual-pages

]])


-- Prerequisites
load("zlib/1.2.8")
load("bzip2/1.0.6")
load("xz/5.2.2")


-- Libraries
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib"))


-- Headers
prepend_path('CPATH', pathJoin(installDIR,"include"))


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man Pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))


