#!/bin/bash

# Create ~/.hal directory
mkdir -p ~/.hal

# Run the Halyard Docker container
docker run -p 8084:8084 -p 9000:9000 \
    --name halyard --rm \
    --network host -d \
    -v ~/.hal:/home/spinnaker/.hal \
    us-docker.pkg.dev/spinnaker-community/docker/halyard:stable

# Run the `hal --print-bash-completion` command after starting the container
docker exec -it halyard bash -c "source <(hal --print-bash-completion)"
docker exec -it halyard bash -c "echo '=== Halyard Container is Running and Auto Completion Enabled ===='"
