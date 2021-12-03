#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=eslamhosney/udacity_ml_proj_img

# Step 2
# Run the Docker Hub container with kubernetes
docker pull eslamhosney/udacity_ml_proj_img:latest
kubectl run udacity-ml-proj-deploy\
	    --image=eslamhosney/udacity_ml_proj_img\
		--port=80 --labels app=udacity-ml-proj-deploy

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl port-forward udacity-ml-proj-deploy 8000:80