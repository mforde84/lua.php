-- -*- lua -*-


------------------------------------------------------------------------
-- Meerkat 0.189
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
whatis("Name:        meerkat")
whatis("Version:     0.189")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         http://compbio.med.harvard.edu/Meerkat/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use Meerkat 0.189


Product Description
-------------------
Meerkat is designed to identify structural variations (SVs) from paired end 
high throughput sequencing data. It predicts SVs from discordant read pairs 
(pairs that mapped to reference genome in unexpected way). Then it looks for 
reads that cover the predicted breakpoints junctions (split read support), 
refines breakpoints by local alignments and predicts mechanisms that SVs are 
formed. It is more sensitive, with remapping of unmapped and partially 
mapped reads, especially when the insert size of sequencing library is small 
(i.e. read length is 100bp and insert size is 200bp), since the SV breakpoint 
has to be in- between the paired end reads to form discordant read pair. 
With discordant read pair, split read support and some filtering steps, it 
has low false positive rate. It can also take into account of reads from 
repetitive regions (non-uniquely mapped), combine discordant read pair 
clusters to predict complex events, and select the most supported and 
smallest events.


Dependencies
------------
gcc/6.2.0
perl/5.24.0
R/3.4.1
samtools/0.1.19
bwa/0.6.2
blast/2.6.0
blat/35
primer3/2.3.7


Documentation
-------------
Online documentation is available at:

http://compbio.med.harvard.edu/Meerkat/

]])

-- PREREQUISITE
load("perl/5.24.0")
load("R/3.4.1")
load("samtools/0.1.19")
load("bwa/0.6.2")
load("blast/2.6.0")
load("blat/35")
load("primer3/2.3.7")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
prepend_path('PATH', pathJoin(installDir,"scripts"))


-- LIBRARIES
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"src/mybamtools/lib"))
prepend_path('LIBRARY_PATH', pathJoin(installDir,"src/mybamtools/lib"))
