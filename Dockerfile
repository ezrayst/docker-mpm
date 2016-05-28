FROM cbgeo/cb-geo:latest
MAINTAINER Krishna Kumar <kks32@cam.ac.uk>

# Enter as root
USER root

# Update to latest packages
RUN dnf update -y 

# Install Eigen
RUN dnf install -y eigen3-devel

# Switch user to cbgeo
USER cbgeo

# Done
WORKDIR /home/cbgeo/research
