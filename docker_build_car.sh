#!/bin/bash

hash=$(git rev-parse --short HEAD)
docker build --platform linux/arm64 -t rianders/car:$hash -f car.dockerfile .
docker push rianders/car:$hash
# use latest for release PARITy

#TODO:
# Bare metal machine and vscode remote -ssh  to chameleon and

# Find the containter: % docker image ls

# run local and clean up % docker run --rm   -it  car
# To save it for use: docker run --name localname   -it  rianders/car:1506f2
#docker run --rm   -it --entrypoint=/bin/bash rianders/car:$hash   
#
#docker run --rm --privileged multiarch/qemu-user-static --reset -p yes 
#
