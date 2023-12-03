FC = gfortran
FFLAGS = -Wall -Wno-unused-variable -g -fcheck=all -cpp

all:
	# Build the file helpers module
	$(FC) $(FFLAGS) -c ./utils/file_helpers.f95
	$(FC) $(FFLAGS) ./day1/day1.f95 ./file_helpers.o -o ./day1.out

examples_target:
	$(FC) $(FFLAGS) ./examples/hello.f95 -o ./hello.out
	$(FC) $(FFLAGS) ./examples/hello_world.f95 -o ./hello_world.out
	$(FC) $(FFLAGS) ./examples/palindrome.f95 -o ./palindrome.out

clean:
	rm *.out
	rm *.o
