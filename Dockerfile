FROM python:3.9.4-alpine

RUN mkdir /app

WORKDIR /app

COPY . /app

#RUN apt-get update

#RUN apt-get install -y nano curl wget
RUN pip install setuptools
RUN pip install -r requirements.txt

ENV VERSION 3.0.b

ENV FLASK_APP main.py
ENV FLASK_DEBUG false
ENV FLASK_RUN_PORT 8080

COPY src/ .

CMD ["python", "main.py"]