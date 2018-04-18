-- -*- lua -*-


------------------------------------------------------------------------
-- reapr 1.0.18
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
whatis("Name:        reapr")
whatis("Version:     1.0.18")
whatis("Category:    toolset")
whatis("Description: A tool that evaluates the accuracy of a genome assembly using mapped paired end reads")
whatis("URL:         http://www.sanger.ac.uk/science/tools/reapr")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use reapr 1.0.18


Product Description
-------------------
REAPR is a tool that evaluates the accuracy of a genome assembly using mapped paired end reads, without the 
use of a reference genome for comparison. It can be used in any stage of an assembly pipeline to automatically 
break incorrect scaffolds and flag other errors in an assembly for manual inspection. It reports mis-assemblies 
and other warnings, and produces a new broken assembly based on the error calls.

The software requires as input an assembly in FASTA format and paired reads mapped to the assembly in a BAM file. 
Mapping information such as the fragment coverage and insert size distribution is analysed to locate mis-assemblies. 
REAPR works best using mapped read pairs from a large insert library (at least 1000bp). Additionally, if a short 
insert Illumina library is also available, REAPR can combine this with the large insert library in order to score 
each base of the assembly.

Dependencies
------------
gcc/6.2.0


Documentation
-------------

Online documentation is available at:

http://www.sanger.ac.uk/science/tools/reapr

]])



-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))

