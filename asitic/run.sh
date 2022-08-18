#!/bin/bash

xhost +
ASITIC=$(realpath "$0")
ASITIC_PATH=$(dirname "$ASITIC")

docker run --rm -ti --net=host -v $ASITIC_PATH:/asitic -w="/asitic" --env=DISPLAY --volume=/tmp/.X11-unix:/tmp/.X11-unix asitic /bin/bash -c "/asitic_linux -t /asitic/sky130.tek -g"
