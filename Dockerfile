FROM nginx:stable-alpine

# Copy the single-page site into nginx's default html location
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Use the default nginx command provided by the base image
