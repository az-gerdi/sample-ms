# Created 07.06.2020 by Abou-Zeid Gerdi
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu

# Pull base image.
FROM ubuntu:18.04

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  # ADD by age 07.06.2020 -  wird benötigt für  Key-Mangement-Installation
  apt-get install dirmngr --install-recommends && \
  rm -rf /var/lib/apt/lists/*

# ADD by age 07.06.2020 - wird im Moment nicht benötigt
# COPY ./config/proxy.conf /etc/apt/apt.conf.d/

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
