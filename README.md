# Advent of Code 2023

## Building
### 'Normal' build
For a normal build, that is, a build running against the example input, just
run the make file i.e.

```bash
user@linux_box:~/AOC2023: make
```

Then you can run whatever day you want, i.e. `./day1.out` or `./day1-2.out`

### 'Real' build
For a real build, that is, one using the real input values, you need to set
a variable to ensure that `REAL_INPUT` exists, at the moment this is done
as so:

```bash
REAL_INPUT="-D REAL_INPUT" make
```

Yhen you can run whatever day you want agains the real input values

### Clean
To cleanup run the clean target

```
make clean
```

## Testing
Unit tests as well as integration tests are provided

### Unit Tests
The unit tests are written using the funit framework from ruby, if you want
to install it locally you can do:

```
gem install funit
```

Then to run the tests cd into the directory with the unit tests and run funit:

```
cd ./utils
funit
```

If you don't want to taint your machine with an funit install as well as a
ruby installation then a handy-dandy docker image has been provided with
everything already installed. First make sure the image is build

```
./docker/build.sh
```

Then you can use the `build.sh` script at the root of this repo to run the
tests without ever needing to use the docker image's cli

```
./build.sh test
```

And to cleanup the test artifacts

```
./build.sh cleantest
```

### Integration Tests
Some basic bash scripts have been included to act as integration tests, these
can be found at `./integration_tests`, you can run each one manually, or you
can run them all at once using the handy scripy provided

```
./github/run_integration_tests.sh
```
