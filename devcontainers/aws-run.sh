#!/usr/bin/env bash
docker run \
  -dt \
  -h personal  \
  --name personal \
  -v $HOME/gits/personal:/home/aws-user/gits/personal \
  modops/devcontainers-awsdev:20161211183404 /bin/bash

# copy SSH configuration
docker cp \
  $HOME/.ssh \
  personal:/home/aws-user/.ssh
