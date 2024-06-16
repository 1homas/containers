#
# Dockerfile to create an Ubuntu container.
# Usage:
#   podman build --tag hello --file nginx_hello.dockerfile
#   podman run -dti -p 8000:80 --name hello hello
# Login and troubleshoot:
#   podman exec -it nginx /bin/bash
#

# Use the official Nginx image from the Docker Hub
FROM nginx:latest 
RUN echo '<!DOCTYPE html><html><head><title>Hello from NGINX!</title><link rel="stylesheet" href="https://unpkg.com/tachyons/css/tachyons.min.css"/></head><body><h1 class="f1 lh-title tc helvetica">Hello from NGINX</h1></body></html>' > /usr/share/nginx/html/index.html
EXPOSE 80
