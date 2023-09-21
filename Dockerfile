# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

WORKDIR /app
RUN pip install --upgrade pip && pip install pandas flask
COPY . .

CMD ["python3", "app.py"]