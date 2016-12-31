#!/usr/bin/env bash
docker run \
  -dt \
  -h awsdev  \
  --name awsdev \
  -v $HOME/gits:/home/aws-user/gits \
  ansible-container-awsdev /bin/bash

# copy SSH configuration
docker cp \
  $HOME/.ssh \
  awsdev:/home/aws-user/.ssh
