# projectB/Dockerfile
FROM python:3.8-slim-buster

# Set the working directory to /app
WORKDIR /app/projectB

# Copy the current directory contents into the container at /app
COPY . .

RUN pip install -r requirements.txt

EXPOSE 8001

