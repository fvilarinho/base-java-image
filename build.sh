#!/bin/bash

echo $REPOSITORY_PASSWORD | docker login -u $REPOSITORY_USER $REPOSITORY_URL --password-stdin 

docker build -t $REPOSITORY_URL/$REPOSITORY_NAME/base-java-image:latest .
docker build -t $REPOSITORY_URL/$REPOSITORY_NAME/base-java-image:1.0.0 .