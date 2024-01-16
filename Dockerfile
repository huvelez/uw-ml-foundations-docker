#
# The following file was created as means to complete the University of Washington Machine Learning Fundamentals Course.
# This will help others like me that had to figure out how to install turicreate in a Mac with an M1 processor.
#
# Based on https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:18.04

# Installing packages.
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  apt-get install -y python3 python3-pip libatlas3-base libffi-dev
RUN python3 -m pip install --upgrade pip
RUN pip3 install matplotlib && \
    pip3 install jupyterlab && \
    pip3 install notebook && \
    pip3 install voila && \
    pip3 install -U turicreate

# Add files.
ADD root/.bashrc /root/.bashrc

# Environmental variables
ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

EXPOSE 8888

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["sh", "-c", "jupyter lab --allow-root --port=8888 --no-browser --ip=*"]
