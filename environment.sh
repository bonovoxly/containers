#!/bin/bash
if [ ! -d ./env/bin/activate ]; then
  virtualenv env
  source ./env/bin/activate
  pip install -U boto boto3 ansible
else:
  source ./env/bin/activate
fi

if [ ! -d ansible-container ]; then
  git clone https://github.com/ansible/ansible-container.git
fi
