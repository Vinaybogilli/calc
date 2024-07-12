# Use the official Python image as the base image
FROM python:3.9-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the static website files into the working directory
COPY . .

# Expose port 80 to the outside world
EXPOSE 80

# Start the Python HTTP server when the container starts
CMD ["python3", "-m", "http.server", "80"]
