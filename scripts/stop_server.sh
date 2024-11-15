#!/bin/bash

# Stop the running Docker container by name
CONTAINER_NAME="django-app"

echo "Checking if $CONTAINER_NAME is running..."

# Check if the container is running
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Stopping the existing container $CONTAINER_NAME..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
    echo "$CONTAINER_NAME stopped and removed."
else
    echo "No running container found with the name $CONTAINER_NAME."
fi

echo "Stop script completed."
