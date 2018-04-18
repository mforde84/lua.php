-- -*- lua -*-


------------------------------------------------------------------------
-- libffi 3.2.1 
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "gcc-4.9.4"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        libffi")
whatis("Version:     3.2.1")
whatis("Category:    library")
whatis("Description: Portable, high level programming interface to various calling conventions.")
whatis("URL:         https://sourceware.org/libffi/")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use libffi 3.2.1.


Product Description
-------------------
Compilers for high level languages generate code that follows 
certain conventions. These conventions are necessary, in part, for 
separate compilation to work. One such convention is the "calling 
convention". The "calling convention" is a set of assumptions made 
by the compiler about where function arguments will be found on 
entry to a function. A "calling convention" also specifies where 
the return value for a function is found.

Some programs may not know at the time of compilation what arguments 
are to be passed to a function. For instance, an interpreter may be 
told at run-time about the number and types of arguments used to 
call a given function. Libffi can be used in such programs to 
provide a bridge from the interpreter program to compiled code.

The libffi library provides a portable, high level programming 
interface to various calling conventions. This allows a programmer 
to call any function specified by a call interface description at 
run-time.

FFI stands for Foreign Function Interface. A foreign function 
interface is the popular name for the interface that allows code 
written in one language to call code written in another language. 
The libffi library really only provides the lowest, machine dependent 
layer of a fully featured foreign function interface. A layer must 
exist above libffi that handles type conversions for values passed 
between the two languages. 


Dependencies
------------
gcc/4.9.4


Documentation
-------------
The following man pages are available:

ffi(3), ffi_call(3), ffi_prep_cif(3), ffi_prep_cif_var(3)


]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib64"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib64"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"lib/libffi-3.2.1/include"))


-- Man pages
prepend_path('MANPATH', pathJoin(installDir,"share/man"))


