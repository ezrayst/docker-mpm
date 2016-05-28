# Docker image for mpm MPM
> Krishna Kumar

[Docker image](https://hub.docker.com/r/cbgeo/mpm/)

## Tools

* Autotools
* Clang
* Clangformat
* GCC 5.3.1
* Vim

# Creating an image from the docker file

* To build an image from docker file run as root `docker build -t "cbgeo/mpm" /path/to/Dockerfile`
* `docker history` will show you the effect of each command has on the overall size of the file.

# Use the docker image

* The docker image can be used directly from the Docker Hub
* To launch the `cbgeo/ca-abm`  docker container, run `docker run -ti cbgeo/mpm:latest /bin/bash`

# To login as root
* Launching docker as root user: `docker exec -u 0 -ti <containerid> /bin/bash`
