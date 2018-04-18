-- -*- lua -*-


------------------------------------------------------------------------
-- FastQC 0.10.1
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
whatis("Name:        FastQC")
whatis("Version:     0.10.1")
whatis("Category:    quality control")
whatis("Description: A quality control tool for high throughput sequence data.")
whatis("URL:         http://www.bioinformatics.babraham.ac.uk/projects/fastqc/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use FastQC 0.10.1


Product Description
-------------------
FastQC is an application which takes a FastQ file and runs a series
of tests on it to generate a comprehensive QC report.  This will
tell you if there is anything unusual about your sequence.  Each
test is flagged as a pass, warning or fail depending on how far it
departs from what you'd expect from a normal large dataset with no
significant biases.  It's important to stress that warnings or even
failures do not necessarily mean that there is a problem with your
data, only that it is unusual.  It is possible that the biological
nature of your sample means that you would expect this particular
bias in your results.

FastQC can be run either as an interactive graphical application 
which allows you to view results for multiple files in a single
application.  Alternatively you can run the program in a non
interactive way (say as part of a pipeline) which will generate
an HTML report for each file you process.


Dependencies
------------
java-jdk/1.7.0_80


Documentation
-------------
Online documentation is available at:

http://www.bioinformatics.babraham.ac.uk/projects/fastqc/Help


]])


-- Executables
prepend_path('PATH', installDir)



