#!/bin/bash

TAGS=(latest 3.6.4 3.6.4-ubuntu 3.6.4-ubuntu17.10 3.6.4-ubuntu-artful)

for tag in ${TAGS[@]}
    do
        docker build -t brunneis/python:$tag .
        docker push brunneis/python:$tag
    done
