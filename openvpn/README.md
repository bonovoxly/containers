# overview

This playbook creates an OpenVPN Docker image using ansible-container. This is a similar Docker image to https://github.com/kylemanna/docker-openvpn .  It's also meant for use with the [OpenVPN playbook found here](https://github.com/bonovoxly/playbook/tree/master/ansible-playbooks).

# container customizations

Aside from initial configuration of the Docker image and general settings of OpenVPN, this ansible-container project configures OpenVPN in the following way:

- Installs iptables, openvpn, and easy-rsa.
- Enables IP routing.
- Configures easy-rsa, including adding `build-ca-automated`, `build-key-server-automated`, and `build-key-automated` scripts, to fully automate SSL creation.
- Adds the `run.sh` launcher script.
- Creates the log directory, `/var/log/openvpn`.

This is just a summary of some of the customizations and are not all inclusive.  See the `ansible/main.yml` file for more information.

# quickstart

- To build the Docker images change to the project, set the environment (see the project README.md for more information):

```
../environment.sh
source ../env/bin/activate
```

- Then build the image:

```
ansible-container build --with-volumes ${PWD}/../ansible-roles:/roles
```

Docker image should build.

- To push the Docker images, run:

```
ansible-container --debug push --with-volumes ${PWD}/../ansible-roles:/roles --with-variables docker_url=https://YOUR.DOCKERREGISTRY.COM,docker_namespace=YOURNAMESPACE
```
