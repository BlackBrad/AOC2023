#!/bin/sh

DIR=$(dirname $0)
PASS_ALL_TESTS=0
PASS_COUNT=0

# Change to root AOC directory to we can run the integration tests
cd $DIR/..

for test in "./integration_tests/*.sh" ; do
    $test
    RESULTS=$?
    if [[ $RESULT -ne 0 ]]; then
        PASS_ALL_TESTS=1
    else
        PASS_COUNT=$((PASS_COUNT+=1))
    fi
done

if [[ $RESULT -ne 0 ]]; then
    echo "FAILED; One or more integration tests has failed"
else
    echo "PASSED: $PASS_COUNT tests passed"
fi
