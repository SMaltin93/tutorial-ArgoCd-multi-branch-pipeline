# Use NGINX as the base image
FROM nginx:alpine

# Copy your frontend files to the container (adjust the path accordingly)
COPY ./dist /usr/share/nginx/html

# Expose the default NGINX port
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
