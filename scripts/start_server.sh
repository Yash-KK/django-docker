#/bin/bash


# Pull the latest version of the Django image
docker pull yashkharche/django-print-name:latest

# Run the Django container
docker run -d \
  --name django-app \
  -p 8000:8000 \
  yashkharche/django-print-name:latest
