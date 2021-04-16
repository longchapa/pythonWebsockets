FROM python:3.9.4-alpine

RUN apk add bind-tools

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY src/ .

CMD ["python", "./main.py"]