# Development Guidelines

This repository contains the NEXD 1D solver, a Fortran project built with a Makefile.

## Project layout
- `src/` – main Fortran source files
- `src/include/` – additional Fortran utilities and modules
- `simulations/` – example simulation setups
- `Makefile` – build rules for the solver and analytical program
- `makeDepFromUseInclude.py` – script to generate module dependencies for Makefile (Python 3)

## Building
Run `make all` to build the main solver. `make analytical` builds the analytical solver. The build expects
`gfortran`, `mpif90`, `lapack`, `blas`, `pgplot`, and `tcsh` to be available. The Makefile uses `makeDepFromUseInclude.py`
 to generate dependency information; this script is written for Python 3.

## Tests
There are currently no automated tests. To verify the build, run `make all` which should compile the solver
and produce a binary in `bin/`. If compilation fails due to missing dependencies, run `setup.sh` in the project
root to install them on Debian/Ubuntu systems.

