# Overview

This is a Docker image ([found here](https://hub.docker.com/r/bcawthra/cloud/)) used for development and DevOps purposes.  It as a slew of packages installed (take a look at container.yml for the full list), including:

- AWS CLI
- Azure CLI
- GCloud
- Terraform
- Ansible
- ZSH, with oh-my-zsh
- Vim, with Vundle and other plugins

# Building

To build, [install ansible-container](https://github.com/bonovoxly/containers), then run `ansible-container build`.  Tag/push to your repo of choice.
