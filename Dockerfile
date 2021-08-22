# syntax=docker/dockerfile:1

#command to build new image
#docker build --tag python-docker .
FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install pandas

copy . .

CMD ["python", "script.py"]
