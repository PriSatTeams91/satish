# Use the official NGINX image as base
FROM nginx:latest

MAINTAINER Satish.mails91@gmail.com

# Copy custom HTML file to NGINX default HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Copy custom NGINX configuration file to container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
