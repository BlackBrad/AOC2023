#!/bin/bash

DIR=$(dirname $0)
DAY="day2"
EXE="$DAY.out"
EXIT_CODE=0

EXPECTED_RESULT=8

# Change to root AOC directory to execute
cd $DIR/..

RESULT=$(./$EXE)

if [[ $RESULT == *$EXPECTED_RESULT ]] ; then
    echo "$DAY: PASSED"
else
    echo "$DAY: FAILED"
    echo "$DAY: EXPECTED ($EXPECTED_RESULT)   GOT ($RESULT)"
    EXIT_CODE=1
fi

exit $EXIT_CODE
