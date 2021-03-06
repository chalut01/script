#!/bin/bash

#stop and remove all container
docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)

docker container prune
docker system prune
docker system prune --volumes
docker image prune -a
