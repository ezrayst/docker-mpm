# Docker image for 3D FE / MPM
> Krishna Kumar

[![Docker hub](https://img.shields.io/badge/docker--hub-cbgeo--mpm3d-ff69b4.svg)](https://hub.docker.com/r/cbgeo/mpm3d)
[![Quay image](https://img.shields.io/badge/quay--image-cbgeo--mpm3d-ff69b4.svg)](https://quay.io/repository/cbgeo/mpm3d)
[![Build status](https://api.travis-ci.org/cb-geo/docker-mpm3d.svg)](https://travis-ci.org/cb-geo/docker-mpm3d)
[![](https://images.microbadger.com/badges/image/cbgeo/mpm3d.svg)](http://microbadger.com/images/cbgeo/mpm3d)

## Tools
* Boost Library
* CMake
* Clang
* GCC 6
* Vim
* Eigen3

# Creating an image from the docker file
* To build an image from docker file run as root `docker build -t "cbgeo/mpm3d" /path/to/Dockerfile`
* `docker history` will show you the effect of each command has on the overall size of the file.

# Using the docker image
* The docker image can be used directly from the Docker Hub or Quay.io
* Pull the docker image `docker pull cbgeo/mpm3d` or `docker pull quay.io/cbgeo/mpm3d`
* To launch the `cbgeo/ca-abm`  docker container, run `docker run -ti cbgeo/mpm3d:latest /bin/bash` or `docker run -ti quay.io/cbgeo/mpm3d:latest /bin/bash`

# To login as root
* Launching docker as root user: `docker exec -u 0 -ti <containerid> /bin/bash`
