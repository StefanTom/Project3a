#Official Python Runtime
FROM python:3.8-slim-buster

#Set the working directory
WORKDIR /app

#Copy the code base in the current directory to the container /app
COPY . /app

#Pip Upgrade
RUN pip install --upgrade pip

#Install needed packages
RUN pip install -r requirements.txt

#Set the default command to run on startup
CMD ["python", "app.py"]

