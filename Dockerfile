# Use an official Ubuntu as a parent image
FROM ubuntu:20.04

# Set environment to non-interactive to prevent prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary tools including Python
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Copy the Python app into the working directory
WORKDIR /app
COPY app.py .

# Set the command to run the Python app
CMD ["python3", "app.py"]
