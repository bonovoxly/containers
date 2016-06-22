# Overview
For right now, an experiment into ansible-container.

The goal is to get the following into an ansible-container setup.  

 Dockerfile:

```
FROM ubuntu:16.04
MAINTAINER Bill Cawthra

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
      apt-get upgrade -y && \
      apt-get install -y apt-transport-https && \
      apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
      echo 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' >> /etc/apt/sources.list.d/docker.list && \
      apt-get update && \
      apt-get install -y curl && \
      apt-get install -y dnsutils && \
      apt-get install -y iputils-ping && \
      apt-get install -y zsh && \
      apt-get install -y groff && \
      apt-get install -y vim && \
      apt-get install -y sudo && \
      apt-get install -y python-dev libffi-dev libssl-dev libxml2-dev libxslt1-dev && \
      apt-get install -y python-pip && \
      apt-get install -y docker-engine && \
      apt-get clean autoclean && \
      rm -rf /var/lib/apt/lists /usr/src/*.deb && \
      systemctl enable docker && \
      pip install -U pip && \
      pip install markupsafe boto boto3 ansible awscli dnspython

RUN useradd -ms /bin/zsh bcawthra

# Fix for volume mounting files within .ansible
RUN mkdir /home/bcawthra/.ansible
RUN chown bcawthra:bcawthra /home/bcawthra/.ansible

CMD ["/bin/bash"]
```

Run command:

```
#!/bin/bash

echo "running $PWD Docker container..."

docker run \
  -dt \
  -h ansible21 \
  --name=ansible21 \
  --tmpfs /tmp \
  -v ~/.ansible:/home/bcawthra/.ansible \
  -v ~/.boto:/home/bcawthra/.boto \
  -v ~/.ssh:/home/bcawthra/.ssh \
  -v ~/gits:/home/bcawthra/gits \
  ansible21:3
```

# Instructions

- Run `environment.sh`.
- Install ansible-container.  More TBD.


