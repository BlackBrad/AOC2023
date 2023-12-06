IMAGE_NAME="ghcr.io/blackbrad/aoc2023"
IMAGE_VERSION="v4"

docker build \
    --tag "$IMAGE_NAME:$IMAGE_VERSION" \
    ${PWD}/docker
