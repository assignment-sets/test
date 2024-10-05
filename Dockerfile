# Base image with Python 3.12.4
FROM python:3.12.4-slim

# Set the working directory in the container
WORKDIR /app

# Install the Dehaze library using pip
RUN pip install Dehaze

# Copy the entire project to the container's working directory
COPY . .

# Expose an uncommon port (e.g., 8085)
EXPOSE 8085

# Command to run your Python application
# Replace 'your_script.py' with the actual Python file you want to run
CMD ["python", "app.py"]
