#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="ibudacity2020devops/machinelearning-micro-srv"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker login
docker tag machinelearning-micro-srv ibudacity2020devops/machinelearning-micro-srv:latest
docker push  ibudacity2020devops/machinelearning-micro-srv:latest
