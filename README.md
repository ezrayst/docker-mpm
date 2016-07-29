# Docker image for FE / MPM
> Krishna Kumar

[![Docker image](https://img.shields.io/badge/docker--image-cbgeo--mpm-ff69b4.svg)](https://quay.io/repository/cbgeo/mpm)
[![Docker Repository on Quay](https://quay.io/repository/cbgeo/mpm/status "Docker Repository on Quay")](https://quay.io/repository/cbgeo/mpm)
[![Build status](https://api.travis-ci.org/cb-geo/docker-mpm.svg)](https://api.travis-ci.org/cb-geo/docker-mpm.svg)
[![Docker hub](https://img.shields.io/badge/docker--hub-cbgeo--mpm-ff69b4.svg)](https://hub.docker.com/r/cbgeo/mpm)

## Tools
* Autotools
* Clang
* Clangformat
* GCC 6
* Vim
* Eigen3

# Creating an image from the docker file
* To build an image from docker file run as root `docker build -t "cbgeo/mpm" /path/to/Dockerfile`
* `docker history` will show you the effect of each command has on the overall size of the file.

# Using the docker image
* The docker image can be used directly from the Docker Hub or Quay.io
* Pull the docker image `docker pull cbgeo/mpm` or `docker pull quay.io/cbgeo/mpm`
* To launch the `cbgeo/ca-abm`  docker container, run `docker run -ti cbgeo/mpm:latest /bin/bash` or `docker run -ti quay.io/cbgeo/mpm:latest /bin/bash`

# To login as root
* Launching docker as root user: `docker exec -u 0 -ti <containerid> /bin/bash`
