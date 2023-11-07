#!/bin/bash

# Build the Docker image
docker build -t task-1 .

# Run the Docker container and map port 8000 to the host (adjust as needed)
docker run --rm task-1
