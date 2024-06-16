#
# Dockerfile to create an Ubuntu container.
# Usage:
#   podman build --tag nginx --file nginx.dockerfile
#   podman run -dti --name nginx -p 8000:80 nginx
# Serve files from the local directory:
#   podman run -dti --name nginx -p 8000:80 --volume .:/usr/share/nginx/html  nginx
# Login and troubleshoot:
#   podman exec -it nginx /bin/bash
#

# Use the official Nginx image from the Docker Hub
FROM nginx:latest 

# Copy local HTML files to NGINX html directory and change file permissions from root for readability
COPY files/nginx/html /usr/share/nginx/html
RUN chown -R nginx:nginx /usr/share/nginx/html

# Replace default configuration to allow directory listings
COPY files/nginx/my_nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
