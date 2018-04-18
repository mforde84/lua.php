-- -*- lua -*-


------------------------------------------------------------------------
-- SnpEff 4.1
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "java-jdk-1.7.0_80"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        SnpEff")
whatis("Version:     4.1")
whatis("Category:    annotation")
whatis("Description: Variant annotation and effect prediction tool.")
whatis("URL:         https://software.broadinstitute.org/gatk/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use the SnpEff 4.1


Product Description
-------------------
SnpEff is a variant annotation and effect prediction tool. It 
annotates and predicts the effects of variants on genes (such as 
amino acid changes).

SnpSift is a toolbox that allows you to filter and manipulate 
annotated files.


Usage
-----
When this module is loaded, the environmental variables SNPEFF and
SNPSIFT are available.

Example:

java -Xmx1G -jar ${SNPEFF}
java -Xmx1G -jar ${SNPSIFT} 


Dependencies
------------
java-jdk/1.7.0_80


Documentation
-------------
Online documentation is available at:

http://snpeff.sourceforge.net/SnpEff_manual.html


]])


-- Environment Variables
setenv("SNPEFF",pathJoin(installDir,"snpEff.jar"))
setenv("SNPSIFT",pathJoin(installDir,"SnpSift.jar"))


-- CLASSPATH
prepend_path('CLASSPATH', pathJoin(installDir,"snpEff.jar"))
prepend_path('CLASSPATH', pathJoin(installDir,"SnpSift.jar"))



