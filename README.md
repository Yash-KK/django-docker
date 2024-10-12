# Django Print Name App

This is a simple Django application that takes a name input and prints it out. It has been dockerized for easy deployment and use.

## Prerequisites

- Docker installed on your local machine. If you haven't installed Docker yet, you can follow the instructions [here](https://docs.docker.com/get-docker/).

## Getting Started

### 1. Pull the Docker Image

You can pull the Docker image for this application from Docker Hub by running the following command:

```bash
docker pull yashkharche/django-print-name:v2
```

### 2. Run the Docker Image

After pulling the image, you can run it locally using the command below:

```bash
docker run -it -p 8000:8000 yashkharche/django-print-name:v2
```

### 3. Access the Application

Once the container is running, open your web browser and navigate to [http://localhost:8000](http://localhost:8000). You will see the application interface where you can enter a name.

### 4. Enter Your Name

Type in your name in the provided input field and hit enter. The application will print your name on the screen!
