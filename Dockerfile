FROM python:3.7-alpine

MAINTAINER Mohit App Developer Ltd

ENV PYTHONUNBUFFERED 1

# Install dependencies from requirements.txt
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Create and switch to the application directory
RUN mkdir /app
WORKDIR /app

# Copy the application code
COPY ./app/ /app/

# Create a user and switch to it for security
RUN adduser -D user
USER user

# Replace this line with the command to start your application
# e.g., CMD ["python", "app.py"]
# or CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
CMD ["python","app.py"]