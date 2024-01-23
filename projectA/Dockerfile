# projectA/Dockerfile
FROM python:3.8-slim-buster

WORKDIR /app

# Copy requirements.txt file from the current directory to the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Set the working directory to /app/projectA
WORKDIR /app/projectA

# Make port 8000 available to the world outside this container
EXPOSE 8000

