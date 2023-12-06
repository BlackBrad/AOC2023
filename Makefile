FC = gfortran
FFLAGS = -Wall -Wno-unused-variable -g -fcheck=all -cpp
UNIT_TEST = funit
UNIT_TEST_CLEAN = $(UNIT_TEST) --clean

all:
	# Build the utils
	$(FC) $(FFLAGS) -c ./utils/file_helpers.f90
	$(FC) $(FFLAGS) -c ./utils/string_utils.f90
	$(FC) $(FFLAGS) -c ./utils/day1_helpers.f90

	# Now build the assignment for each day
	$(FC) $(FFLAGS) $(REAL_INPUT) ./day1/day1.f90 ./file_helpers.o ./string_utils.o -o ./day1.out
	$(FC) $(FFLAGS) $(REAL_INPUT) ./day1/day1-2.f90 ./file_helpers.o ./string_utils.o day1_helpers.o -o ./day1-2.out

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
	rm *.mod

clean_test:
	cd ./utils && $(UNIT_TEST_CLEAN); rm *.o; rm *.mod;  cd ..
