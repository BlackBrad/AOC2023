#!/bin/sh

WORKSPACE="/workspace"
FILE="Makefile"

cd "$WORKSPACE"

if [ $1 == "build" ]; then
    make
elif [ $1 == "examples" ]; then
    make examples_target
elif [ $1 == "test" ]; then
    make test_target
elif [ $1 == "clean" ]; then
    make clean
elif [ $1 == "cleantest" ]; then
    make clean_test
elif [ $1 == "run" ]; then
    for exe in "$WORKSPACE"/*.out ; do
        $exe
    done
fi
