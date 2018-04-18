-- -*- lua -*-


------------------------------------------------------------------------
-- ngs 1.3.0
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
whatis("Name:        ngs")
whatis("Version:     1.3.0")
whatis("Category:    sequence analysis")
whatis("Description: The MEME Suite allows the biologist to discover novel motifs in collections of unaligned nucleotide or protein sequences.")
whatis("URL:         http://meme-suite.org/doc/overview.html?man_type=web")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use meme.


Product Description
-------------------
The MEME Suite supports motif-based analysis of DNA, RNA and protein sequences. It provides motif discovery 
algorithms using both probabilistic (MEME) and discrete models (MEME), which have complementary strengths. 
It also allows discovery of motifs with arbitrary insertions and deletions (GLAM2). In addition to motif 
discovery, the MEME Suite provides tools for scanning sequences for matches to motifs (FIMO, MAST and GLAM2Scan), 
scanning for clusters of motifs (MCAST), comparing motifs to known motifs (Tomtom), finding preferred spacings between 
motifs (SpaMo), predicting the biological roles of motifs (GOMo), measuring the positional enrichment of sequences 
for known motifs (CentriMo), and analyzing ChIP-seq and other large datasets (MEME-ChIP).

Dependencies
------------
gcc/6.2.0


Documentation
-------------
Man pages of interest:

Online documentation is available at:

http://meme-suite.org/doc/overview.html?man_type=web

]])


load("java-jdk/1.8.0_92")


-- Libraries 
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib64"))

-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))

-- CLASSPATH
prepend_path('CLASSPATH', pathJoin(installDir,"jar/ngs-java.jar"))
