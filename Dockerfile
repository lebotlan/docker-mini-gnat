##
##  Setup a build environment with GNAT-Ada
##

## This is ubuntu 32 bits
FROM bitnami/minideb


## Base & add user
RUN apt-get -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y upgrade && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install gcc gnat m4 make sudo && \
  adduser --disabled-password --gecos '' mster && \
  echo "mster ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
  
RUN mkdir /home/commetud && \
    chown mster:mster /home/commetud

USER mster
ENV HOME /home/mster
WORKDIR /home/mster
