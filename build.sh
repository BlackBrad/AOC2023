#!/bin/bash

DOCKER_IMAGE_VERSION="v4"
DOCKER_IMAGE="ghcr.io/blackbrad/aoc2023"

FULL_DOCKER_IMAGE="$DOCKER_IMAGE":"$DOCKER_IMAGE_VERSION"
RUNTIME_DIR=$(dirname $0)
WORKSPACE="/workspace"
FULL_MOUNT="$RUNTIME_DIR":"$WORKSPACE"

DOCKER_COMMAND="docker run -v "$FULL_MOUNT" -it $FULL_DOCKER_IMAGE"


if [ $1 == "build" ]; then
    $DOCKER_COMMAND sh -c "/inside.sh build"
elif [ $1 == "examples" ]; then
    $DOCKER_COMMAND sh -c "/inside.sh examples"
elif [ $1 == "test" ]; then
    $DOCKER_COMMAND sh -c "/inside.sh test"
elif [ $1 == "clean" ]; then
    $DOCKER_COMMAND sh -c "/inside.sh clean"
elif [ $1 == "cleantest" ]; then
    $DOCKER_COMMAND sh -c "/inside.sh cleantest"
elif [ $1 == "run" ]; then
    $DOCKER_COMMAND sh -c "/inside.sh run"
elif [ $1 == "shell" ]; then
    $DOCKER_COMMAND /bin/sh
fi
