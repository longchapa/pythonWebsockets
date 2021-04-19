FROM ubuntu:focal

COPY . /app
WORKDIR /app

USER root

ADD requirements.txt /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["main.py"]