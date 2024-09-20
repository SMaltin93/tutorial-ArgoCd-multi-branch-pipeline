# Use an official NGINX image to serve static content
FROM nginx:alpine

# Copy your frontend files to the container
COPY . /usr/share/nginx/html

# Expose the port NGINX will run on
EXPOSE 80
