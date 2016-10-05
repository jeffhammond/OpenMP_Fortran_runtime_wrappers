FC 	:= ifort
FCFLAGS	:= -std08 -free -g -warn all -traceback

LIBS	:= -qopenmp

.phony: run

all: run

run: test_lib.x test_lock.x test_target.x
	./test_lib.x
	./test_lock.x
	./test_target.x
	-rm $<
	-rm *.mod

test_lib.x: test_lib.F omp_lib_f03.mod
	$(FC) $(FCFLAGS) $< $(LIBS) -o $@

test_lock.x: test_lock.F omp_lock_f03.mod omp_lib_f03.mod
	$(FC) $(FCFLAGS) $< $(LIBS) -o $@

test_target.x: test_target.F omp_target_f03.mod omp_lib_f03.mod
	$(FC) $(FCFLAGS) $< $(LIBS) -o $@

%.mod: %.F
	$(FC) $(FCFLAGS) -c $<

%.mod: %.f
	$(FC) $(FCFLAGS) -c $<

clean:
	-rm -f *.o
	-rm -f *.mod
	-rm -rf *.dSYM

