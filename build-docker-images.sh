#!/bin/sh

for img in $(ls dockerfiles); do
    sudo docker build -t ceeac/boomerang-build-env:$img dockerfiles/$img/
done
