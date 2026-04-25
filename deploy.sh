#!/bin/bash

REPO_URL="https://github.com/Yayanjay/personal-website.git"
CLONE_DIR="/home/zayyan/application/personal-website"
CONTAINER_NAME="personal-website"
HOST_PORT="5173"

if [ -d "$CLONE_DIR" ]; then
    echo "Repository already exists. Pulling latest changes..."
    cd "$CLONE_DIR" && git pull
else
    echo "Cloning repository..."
    git clone "$REPO_URL" "$CLONE_DIR"
fi

echo "Building Docker image..."
cd "$CLONE_DIR"
docker build -t "$CONTAINER_NAME" .

echo "Removing old container if exists..."
docker rm -f "$CONTAINER_NAME" 2>/dev/null

echo "Starting container..."
docker run -d \
    --name "$CONTAINER_NAME" \
    -p "$HOST_PORT":80 \
    --restart always \
    "$CONTAINER_NAME"

echo "Done! Container running on port $HOST_PORT"