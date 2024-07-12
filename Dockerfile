# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the static website files into the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]