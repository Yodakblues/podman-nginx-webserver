#!/bin/bash

CONTAINER_NAME="myapp-container"
IMAGE="nginx:latest"
HOST_PORT=8080
CONTAINER_PORT=80

# Remove existing container if exists
podman rm -f $CONTAINER_NAME 2>/dev/null

# Pull latest image
podman pull $IMAGE

# Run container detached
podman run -d --name $CONTAINER_NAME -p ${HOST_PORT}:${CONTAINER_PORT} $IMAGE

# Generate systemd service file
podman generate systemd --name $CONTAINER_NAME --files --restart-policy=always

# Move the systemd service file to system directory
sudo mv container-${CONTAINER_NAME}.service /etc/systemd/system/

# Reload systemd, enable and start the service
sudo systemctl daemon-reload
sudo systemctl enable --now container-${CONTAINER_NAME}.service

echo "Container setup complete and running under systemd."
