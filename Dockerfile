# Use the official Nginx image
FROM nginx:alpine

# Copy your custom Nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your static website files
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
