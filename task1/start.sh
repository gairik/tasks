#!/bin/bash

# Build the Docker image
docker build -t task-1 .

# Run the Docker container 
docker run --rm task-1
