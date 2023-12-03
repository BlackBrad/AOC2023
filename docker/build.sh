IMAGE_NAME="ghcr.io/blackbrad/aoc2023"
IMAGE_VERSION="v3"

docker build \
    --tag "$IMAGE_NAME:$IMAGE_VERSION" \
    ${PWD}/docker
