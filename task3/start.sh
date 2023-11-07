#!/bin/bash

# Build the Docker image
docker build -t task-3 .

# Run the Docker container and map port 8000 to the host (adjust as needed)
docker run --rm -p 8000:8000 task-3