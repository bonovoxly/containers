#!/bin/bash

if [ ! -f ./env/bin/activate ]; then
  virtualenv env
  source ./env/bin/activate
  pip install boto ansible setuptools ansible-container
fi

echo "ansible-container installed and configured."
echo "run 'source ./env/bin/activate'."
