#!/bin/sh
IMAGE_NAME=${PWD##*/}
echo "Building image $IMAGE_NAME ... "

sudo docker rmi "$IMAGE_NAME:latest"
sudo docker build -t "$IMAGE_NAME:latest" .
