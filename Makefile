FC = gfortran
FFLAGS = -Wall -Wno-unused-variable -g -fcheck=all -cpp

all:
	$(FC) $(FFLAGS) ./day1/day1.f95 -o ./day1.out

examples_target:
	$(FC) $(FFLAGS) ./examples/hello.f95 -o ./hello.out
	$(FC) $(FFLAGS) ./examples/hello_world.f95 -o ./hello_world.out

clean:
	rm *.out
