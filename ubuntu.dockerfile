#
# Dockerfile to create an Ubuntu container.
# Usage:
#   podman build --tag ubuntu --file ubuntu_2404.dockerfile
#   podman run -dti --name ubuntu --rm ubuntu
# Login:
#   podman exec -it ubuntu /bin/bash 
#
# Mount a local host directory
#   podman run -dti --name ubuntu --volume /Users/thomas:/root  ubuntu
#

# For the official list of available tags, see https://hub.docker.com/_/ubuntu/
FROM ubuntu:latest 
# FROM ubuntu:22.04 
# FROM ubuntu:24.04 

ENV LANG en_US.utf8

RUN apt update
RUN apt install -y inetutils-ping  openssl  iproute2  git
