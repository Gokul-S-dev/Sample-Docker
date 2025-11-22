FROM nginx:stable-alpine

# Copy the single-page site into nginx's default html location
COPY index.html /usr/share/nginx/html/index.html


# The repository contains a configuration file named `ngnix.conf` (note the spelling).
# Copy it into nginx's conf.d as the default server config so nginx will use it.
# If you later rename it to `nginx.conf`, update this Dockerfile accordingly.
COPY ngnix.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Use the default nginx command provided by the base image (no CMD needed)
CMD [ "nginx", "-g", "daemon off;" ]
