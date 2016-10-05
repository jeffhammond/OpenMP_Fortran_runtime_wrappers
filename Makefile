FC 	:= ifort
FCFLAGS	:= -std08 -free -g -warn all -traceback

LIBS	:= -qopenmp

all: test.x

test.x: test.F omp_lib_f03.mod
	$(FC) $(FCFLAGS) $< $(LIBS) -o $@

%.mod: %.F
	$(FC) $(FCFLAGS) -c $<

%.mod: %.f
	$(FC) $(FCFLAGS) -c $<

clean:
	-rm -f *.o
	-rm -f *.mod

