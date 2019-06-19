#!/bin/bash

PYTHON_VERSION=$(cat PYTHON_VERSION)
TAGS=($(echo $PYTHON_VERSION | cut -d '.' -f 1,2) $PYTHON_VERSION $PYTHON_VERSION-ubuntu $PYTHON_VERSION-ubuntu-18.04 $PYTHON_VERSION-ubuntu-bionic)

for tag in ${TAGS[@]}
    do
        docker build --build-arg PYTHON_VERSION=$PYTHON_VERSION -t brunneis/python:$tag .
        docker push brunneis/python:$tag
    done
