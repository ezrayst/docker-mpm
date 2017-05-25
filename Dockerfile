FROM fedora:latest
MAINTAINER Krishna Kumar <kks32@cam.ac.uk>

# Update to latest packages, remove vim-minimal & Install Git, GCC, Clang, Autotools and VIM
RUN dnf update -y && \
    dnf remove -y vim-minimal python sqlite && \
    dnf install -y clang cmake cppcheck eigen3-devel findutils gcc gcc-c++ git make perl-Digest-MD5 ruby tar valgrind vim wget && \
    dnf clean all

# Coverage 
RUN wget http://ftp.de.debian.org/debian/pool/main/l/lcov/lcov_1.11.orig.tar.gz && tar xf lcov_1.11.orig.tar.gz && make -C lcov-1.11/ install

# Create a user cbgeo
RUN useradd cbgeo
USER cbgeo

# Create a research directory and clone git repo of felib code
RUN mkdir -p /home/cbgeo/research && \
    cd /home/cbgeo/research && \
    git clone https://github.com/cb-geo/felib.git

# Done
WORKDIR /home/cbgeo/research/felib
