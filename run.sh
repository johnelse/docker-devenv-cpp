#!/bin/bash

docker run -it \
    --rm \
    -u dev \
    --name "devenv-${RANDOM}" \
    -v "${PWD}":/external:ro \
    "${USER}/devenv"
