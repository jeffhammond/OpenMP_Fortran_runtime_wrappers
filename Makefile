FC 	:= ifort
FCFLAGS	:= -std08 -free -g -warn all -traceback

all: omp_lib_f03.mod

%.mod: %.F
	$(FC) $(FCFLAGS) -c $<

%.mod: %.f
	$(FC) $(FCFLAGS) -c $<

clean:
	-rm -f *.o
	-rm -f *.mod

