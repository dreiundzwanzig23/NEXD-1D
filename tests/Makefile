PFUNIT ?= /usr/local/pfunit
include $(PFUNIT)/include/PFUNIT.mk

FC ?= gfortran
FFLAGS += -I../src -I../src/include $(PFUNIT_EXTRA_FFLAGS)

unit_tests_TESTS := test_getgll.pf test_io.pf
unit_tests_OTHER_SOURCES := \
    ../src/constantsMod.f90 \
    ../src/include/realloc.f90 \
    ../src/include/errorMessage.f90 \
    test_parameterMod.f90 \
    ../src/gllMod.f90 \
    ../src/include/ioMod.f90

$(eval $(call make_pfunit_test,unit_tests))

all: unit_tests

%.o: %.F90
	$(FC) -c $(FFLAGS) $< -o $@

%.o: %.f90
	$(FC) -c $(FFLAGS) $< -o $@
test_getgll.o test_io.o: $(unit_tests_other_objs)
../src/gllMod.o: ../src/constantsMod.o
