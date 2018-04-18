-- -*- lua -*-


------------------------------------------------------------------------
-- LAPACK 3.7.0 
-- Mike Jarsulic 
------------------------------------------------------------------------


-- Local Variables
local pkgName      = myModuleName()
local version      = myModuleVersion()
local pkgNameVer   = pathJoin(pkgName,version)
local base         = "/apps/software"
local compiler     = "pgi-16.9"
local installDir   = pathJoin(base,compiler,pkgNameVer)
local mdir         = pathJoin("MPI",pkgNameVer)


-- Whatis Message
whatis("Name:        LAPACK")
whatis("Version:     3.7.0")
whatis("Category:    math, library")
whatis("Description: Linear algebra library")
whatis("URL:         http://www.netlib.org/lapack/index.html")


--Help Message
help(
[[

Purpose
-------
This module file defines the system paths and environment variables
needed to use LAPACK 3.7.0


Product Description
-------------------
LAPACK is written in Fortran 90 and provides routines for solving 
systems of simultaneous linear equations, least-squares solutions 
of linear systems of equations, eigenvalue problems, and singular 
value problems. The associated matrix factorizations (LU, Cholesky, 
QR, SVD, Schur, generalized Schur) are also provided, as are 
related computations such as reordering of the Schur factorizations 
and estimating condition numbers. Dense and banded matrices are 
handled, but not general sparse matrices. In all areas, similar 
functionality is provided for real and complex matrices, in both 
single and double precision.

The original goal of the LAPACK project was to make the widely 
used EISPACK and LINPACK libraries run efficiently on shared-memory 
vector and parallel processors. On these machines, LINPACK and 
EISPACK are inefficient because their memory access patterns 
disregard the multi-layered memory hierarchies of the machines, 
thereby spending too much time moving data instead of doing useful 
floating-point operations. LAPACK addresses this problem by 
reorganizing the algorithms to use block matrix operations, such 
as matrix multiplication, in the innermost loops. These block 
operations can be optimized for each architecture to account for 
the memory hierarchy, and so provide a transportable way to 
achieve high efficiency on diverse modern machines. We use the 
term "transportable" instead of "portable" because, for fastest 
possible performance, LAPACK requires that highly optimized 
block matrix operations be already implemented on each machine.

LAPACK routines are written so that as much as possible of the 
computation is performed by calls to the Basic Linear Algebra 
Subprograms (BLAS). LAPACK is designed at the outset to exploit 
the Level 3 BLAS -- a set of specifications for Fortran 
subprograms that do various types of matrix multiplication and 
the solution of triangular systems with multiple right-hand 
sides. Because of the coarse granularity of the Level 3 BLAS 
operations, their use promotes high efficiency on many 
high-performance computers, particularly if specially coded 
implementations are provided by the manufacturer.

Alternatively, the user can download ATLAS to automatically 
generate an optimized BLAS library for the architecture. A 
Fortran 77 reference implementation of the BLAS is available 
from netlib; however, its use is discouraged as it will not 
perform as well as a specifically tuned implementation.


Dependencies
------------
pgi/16.9


Documentation
-------------
Online documentation is available at:

http://www.netlib.org/lapack/lug/

]])


-- Libraries 
prepend_path('LIBRARY_PATH', pathJoin(installDir,"lib64"))
prepend_path('LD_LIBRARY_PATH', pathJoin(installDir,"lib64"))


-- Headers
prepend_path('CPATH', pathJoin(installDir,"include"))


