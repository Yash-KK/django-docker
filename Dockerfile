FROM ubuntu

WORKDIR /app

COPY requirements.txt /app
COPY toDeploy /app

ENV PIP_BREAK_SYSTEM_PACKAGES 1

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirements.txt && \
    cd toDeploy

RUN python3 manage.py makemigrations && \
python3 manage.py migrate

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]