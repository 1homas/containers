#
# Dockerfile to create an Ubuntu container.
# Usage:
#   podman build --tag alpine --file alpine.dockerfile
#   podman run -dti --name alpine alpine
# Login:
#   podman exec -it alpine /bin/sh 
#
# Mount a local host directory
#   podman run -dti --name alpine --volume /Users/thomas:/root  alpine
#

# For the official list of Alpine tags, see https://hub.docker.com/_/alpine
FROM alpine:latest 

ENV LANG en_US.utf8

RUN apk update && apk add --no-cache openssl iproute2 git
