# Base image with Python 3.12.4
FROM python:3.12.4-slim

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libgl1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Install Flask and Dehaze libraries using pip
RUN pip install Flask Dehaze

# Copy the entire project to the container's working directory
COPY . .

# Expose an uncommon port (e.g., 8085)
EXPOSE 8085

# Command to run your Python application
CMD ["python", "app.py"]
