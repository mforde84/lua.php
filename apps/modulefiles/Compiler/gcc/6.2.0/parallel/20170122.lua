-- -*- lua -*-


------------------------------------------------------------------------
-- GNU Parallel 20170122
-- Mike Jarsulic 
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
whatis("Name:        GNU Parallel")
whatis("Version:     GNU Parallel 20170122")
whatis("Category:    tool")
whatis("Description: Shell tool for executing jobs in parallel using one or more computers.")
whatis("URL:         https://www.gnu.org/software/parallel/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use GNU Parallel 20170122


Product Description
-------------------
GNU parallel is a shell tool for executing jobs in parallel using 
one or more computers. A job can be a single command or a small script 
that has to be run for each of the lines in the input. The typical 
input is a list of files, a list of hosts, a list of users, a list of 
URLs, or a list of tables. A job can also be a command that reads from 
a pipe. GNU parallel can then split the input and pipe it into commands 
in parallel.

If you use xargs and tee today you will find GNU parallel very easy to 
use as GNU parallel is written to have the same options as xargs. If you 
write loops in shell, you will find GNU parallel may be able to replace 
most of the loops and make them run faster by running several jobs in 
parallel.

GNU parallel makes sure output from the commands is the same output as 
you would get had you run the commands sequentially. This makes it 
possible to use output from GNU parallel as input for other programs.

For each line of input GNU parallel will execute command with the line 
as arguments. If no command is given, the line of input is executed. 
Several lines will be run in parallel. GNU parallel can often be used 
as a substitute for xargs or cat | bash. 


Dependencies
------------
gcc/6.2.0


Documentation
-------------
The following man pages are available:
env_parallel(1), niceload(1), parallel(1), parcat(1), sem(1), sql(1), 
parallel_alternatives(7), parallel_design(7), parallel_tutorial(7) 

Online documentation is available at:

https://www.gnu.org/software/parallel/man.html

]])


-- Executables
prepend_path('PATH', pathJoin(installDir,"bin"))


-- Man Pages
prepend_path('MANPATH', pathJoin(installDir,"man"))


