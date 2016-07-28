FROM fedora:latest
MAINTAINER Krishna Kumar <kks32@cam.ac.uk>

# Enter as root
USER root

# Update to latest packages
RUN dnf update -y 

# Remove vim-minimal
RUN dnf remove -y vim-minimal

# Install Git, GCC, Clang, Autotools and VIM
RUN dnf install -y git gcc gcc-c++ automake clang vim make eigen3-devel

# Create a user cbgeo
RUN useradd cbgeo
USER cbgeo

# Create a research directory
RUN mkdir -p /home/cbgeo/research

# Switch user to cbgeo
USER cbgeo

# Done
WORKDIR /home/cbgeo/research
