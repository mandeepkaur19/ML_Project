FROM python:3.8-slim-buster

WORKDIR /app
COPY . /app

RUN apt update && apt upgrade -y
RUN pip install --no-cache-dir awscli
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python3","app.py"]
