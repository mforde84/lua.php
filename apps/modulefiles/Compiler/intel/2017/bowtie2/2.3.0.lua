-- -*- lua -*-


------------------------------------------------------------------------
-- bowtie2 2.3.0
-- Tony Aburaad
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
whatis("Name:        bowtie2")
whatis("Version:     2.3.0")
whatis("Category:    Aligner")
whatis("Description: Tool for aligning sequencing reads to long reference sequences")
whatis("URL:         http://bowtie-bio.sourceforge.net/bowtie2/index.shtml")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use bowtie2 2.3.0.


Product Description
-------------------
Bowtie 2 is an ultrafast and memory-efficient tool for aligning
sequencing reads to long reference sequences. It is particularly good
at aligning reads of about 50 up to 100s or 1,000s of characters, and
particularly good at aligning to relatively long (e.g. mammalian)
genomes. Bowtie 2 indexes the genome with an FM Index to keep its
memory footprint small: for the human genome, its memory footprint is
typically around 3.2 GB. Bowtie 2 supports gapped, local, and
paired-end alignment modes.


Dependencies
------------
intel/2017


Documentation
-------------
Online documentation is available at:

http://bowtie-bio.sourceforge.net/bowtie2/manual.shtml

]])


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"scripts"))
