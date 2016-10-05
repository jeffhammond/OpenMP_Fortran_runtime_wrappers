FC 	:= ifort
FCFLAGS	:= -std08 -free -g -warn all -traceback

LIBS	:= -qopenmp

.phony: run

all: run

run: test.x
	./test.x
	-rm $<

test.x: test.F omp_lib_f03.mod
	$(FC) $(FCFLAGS) $< $(LIBS) -o $@
	-rm omp_lib_f03.mod

%.mod: %.F
	$(FC) $(FCFLAGS) -c $<

%.mod: %.f
	$(FC) $(FCFLAGS) -c $<

clean:
	-rm -f *.o
	-rm -f *.mod
	-rm -rf *.dSYM

