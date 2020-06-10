#!/bin/bash
source env.sh
TAGS=(latest $(echo $PYTHON_VERSION | cut -d '.' -f 1,2) $PYTHON_VERSION $PYTHON_VERSION-ubuntu $PYTHON_VERSION-ubuntu-20.04 $PYTHON_VERSION-ubuntu-focal)

for tag in ${TAGS[@]}
    do
        docker build --build-arg PYTHON_VERSION=$PYTHON_VERSION -t brunneis/python:$tag .
        docker push brunneis/python:$tag
    done
