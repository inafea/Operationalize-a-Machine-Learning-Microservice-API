#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
export dockerpath='ibrahimnafea/udacitymicroservices:latest'


# Step 2:  
# Authenticate & tag
docker login --username karimg75
docker tag microservices $dockerpath
echo "Docker ID and Image: $dockerpath" 

# Step 3:
# Push image to a docker repository
docker push $dockerpath