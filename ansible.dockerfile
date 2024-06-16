#
# Dockerfile to create a container with Ansible.
# Usage:
#   podman build --tag ansible --file ubuntu_2404.dockerfile
#   podman run -dti --name ansible --rm ansible
#   podman exec -it ansible /bin/bash 
#
FROM ubuntu:24.04 
RUN apt update
# RUN apt install -y inetutils-ping
# RUN apt install -y openssl
# RUN apt install -y iproute2
# RUN apt install python3.11 python3.11-venv python3.11-dev python3-pip
RUN apt install -y python3
RUN apt install -y ansible
RUN apt install -y git
RUN git clone https://github.com/1homas/ISE_Python_Scripts.git
