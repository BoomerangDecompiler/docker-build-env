#!/bin/sh

for img in $(ls dockerfiles); do
    sudo docker build -t ceeac/boomerang-build-env:$img dockerfiles/$img/

    if [ "$TRAVIS_BRANCH" = "master" ] && [ "$TRAVIS_PULL_REQUEST" = "false" ]; then
        echo $DOCKER_PASSWORD | sudo docker login -u $DOCKER_USERNAME --password-stdin
        sudo docker push ceeac/boomerang-build-env:$img
    fi
done
