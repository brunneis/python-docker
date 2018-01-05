#!/bin/bash

TAGS=(3.6.4-ubuntu16.10 3.6.4-ubuntu-yakkety)

for tag in ${TAGS[@]}
    do
        docker build -t brunneis/python:$tag .
        docker push brunneis/python:$tag
    done
