FROM ubuntu:focal

COPY . /app
WORKDIR /app

USER root
RUN apt-get update
RUN apt-get install python3-pip -y
ADD requirements.txt /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["main.py"]