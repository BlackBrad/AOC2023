#!/bin/sh

WORKSPACE="/workspace"
FILE="Makefile"

cd "$WORKSPACE"

if [ $1 == "build" ]; then
    make
elif [ $1 == "clean" ]; then
    make clean
elif [ $1 == "run" ]; then
    for exe in "$WORKSPACE"/*.out ; do
        $exe
    done
fi
