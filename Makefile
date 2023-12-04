FC = gfortran
FFLAGS = -Wall -Wno-unused-variable -g -fcheck=all -cpp
UNIT_TEST = funit
UNIT_TEST_CLEAN = $(UNIT_TEST) --clean

all:
	# Build the file helpers module
	$(FC) $(FFLAGS) -c ./utils/file_helpers.f90
	$(FC) $(FFLAGS) ./day1/day1.f95 ./file_helpers.o -o ./day1.out

test_target:
	# Run the unit tests
	cd ./utils && $(UNIT_TEST); cd ..

examples_target:
	$(FC) $(FFLAGS) ./examples/hello.f95 -o ./hello.out
	$(FC) $(FFLAGS) ./examples/hello_world.f95 -o ./hello_world.out
	$(FC) $(FFLAGS) ./examples/palindrome.f95 -o ./palindrome.out

clean:
	rm *.out
	rm *.o

clean_test:
	cd ./utils && $(UNIT_TEST_CLEAN) ; cd ..
