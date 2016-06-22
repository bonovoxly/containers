#!/bin/bash
virtualenv env
source ./env/bin/activate
pip install -U boto boto3 ansible
git clone https://github.com/ansible/ansible-container.git
