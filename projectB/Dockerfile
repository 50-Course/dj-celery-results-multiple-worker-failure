# projectB/Dockerfile
FROM python:3.8-slim-buster

# Set the working directory to /app
WORKDIR /app/projectB

COPY ../requirements.txt requirements.txt

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8001

