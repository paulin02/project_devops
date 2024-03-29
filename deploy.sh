#!/bin/bash
if [[ $GIT_BRANCH == "dev" ]]; then
    echo "Building and pushing Docker image to dev repository in Docker Hub..."
        
    docker tag book:v1 paulinnancyjeniffer/dev:latest
    docker login -u $dockerhubusername -p $dockerhubpassword
    docker push paulinnancyjeniffer/dev:latest

elif [[ $GIT_BRANCH == "main" ]]; then
    echo "Building and pushing Docker image to prod repository in Docker Hub..."
    
    docker tag book:v1 paulinnancyjeniffer/prod:latest
    docker login -u $dockerhubusername -p $dockerhubpassword
    docker push paulinnancyjeniffer/prod:latest
fi
