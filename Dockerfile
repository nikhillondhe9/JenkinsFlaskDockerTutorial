FROM ubuntu:latest
MAINTAINER Nikhil Londhe "nikhillondhe9@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
ADD . /DockerFlaskApp
WORKDIR /DockerFlaskApp
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
