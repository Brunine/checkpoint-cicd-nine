# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# ENV SOME_VARIABLE=value

# Set the working directory to the project directory
WORKDIR /app

# Install Python dependencies
RUN pip install --upgrade pip && pip install pandas flask
COPY . .

# Specify the command to run your Python script with any required arguments
CMD ["python3", "app.py"]