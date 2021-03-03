#!/bin/sh
IMAGE=blang/latex:ubuntu
# rm : Remove after compilation is done
# cpus=2 limit to 2 cpus
# use currante user and group
# mount volume of current dir to /data
exec docker run --rm -i --cpus=1 --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" "$@"
