-- -*- lua -*-


------------------------------------------------------------------------
-- phyml 3.3
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
whatis("Name:        phyml")
whatis("Version:     3.3")
whatis("Category:    ")
whatis("Description: .")
whatis("URL:         https://github.com/stephaneguindon/phyml")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use phyml 3.3


Product Description
-------------------
PhyML -- Phylogenetic estimation using (Maximum) Likelihood

PhyML is a software that estimates maximum likelihood phylogenies from 
alignments of nucleotide or amino acid sequences. The main strength of 
PhyML lies in the large number of substitution models coupled to 
various options to search the space of phylogenetic tree topologies, 
going from very fast and efficient methods to slower but generally more 
accurate approaches. PhyML was designed to process moderate to large 
data sets. In theory, alignments with up to 4,000 sequences 2,000,000 
character-long can be processed. PhyML can process data sets made of 
multiple genes and fit sophisticated substitution models with 
heterogeneous components across partition elements.


Dependencies
------------
gcc/6.2.0
beagle-lib/2.1.2
mpich/3.2

Documentation
-------------
Online documentation is available at:

https://github.com/stephaneguindon/phyml

]])


-- PREREQUISITE
load("beagle-lib/2.1.2")
load("mpich/3.2")


-- PATH
prepend_path('PATH', pathJoin(installDir,"bin"))
