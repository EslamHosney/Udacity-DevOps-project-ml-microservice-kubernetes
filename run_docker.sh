#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=udacity_ml_proj_img .

# Step 2: 
# List docker images

docker image ls

# Step 3: 
# Run flask app

docker run -p 127.0.0.1:8000:80/tcp udacity_ml_proj_img
