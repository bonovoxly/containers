#!/bin/bash
# this installs Ansible and Ansible Container tools.
# requires that virtualenv be installed
if [ ! -f ./env/bin/activate ]; then
  virtualenv env
  source ./env/bin/activate
  pip install boto ansible setuptools ansible-container
fi

echo "ansible-container installed and configured."
echo "run 'source ./env/bin/activate'."
