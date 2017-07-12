#!/bin/bash
# this installs Ansible and Ansible Container tools.
# requires that virtualenv be installed
if [ ! -f ./env/bin/activate ]; then
  virtualenv env
  source ./env/bin/activate
  pip install boto ansible setuptools
fi
if [ ! -d ansible-container ]; then
  git clone https://github.com/ansible/ansible-container.git
fi
cd ansible-container
git pull
pip install -e '.[docker]'
cd ../

echo "ansible-container installed and configured."
echo "run 'source ./env/bin/activate'."
