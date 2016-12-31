# overview

This playbook creates an OpenVPN Docker image using ansible-container.

# container customizations

Aside from initial configuration of the Docker image and general settings of OpenVPN, this ansible-container project configures OpenVPN in the following way:

- Installs iptables, openvpn, and easy-rsa.
- Enables IP routing.
- Configures easy-rsa, including adding `build-ca-automated`, `build-key-server-automated`, and `build-key-automated` scripts, to fully automate SSL creation.
- Adds the `run.sh` launcher script.
- Creates the log directory, `/var/log/openvpn`.

This is just a summary of some of the customizations and are not all inclusive.  See the `ansible/main.yml` file for more information.

# quickstart

- To build the Docker images change to the project, run:

```
ansible-container build --with-volumes ${PWD}/../ansible-roles:/roles
```

Docker image should build.

- To push the Docker images, run:

```
ansible-container --debug push --with-volumes ${PWD}/../ansible-roles:/roles --with-variables docker_url=https://YOUR.DOCKERREGISTRY.COM,docker_namespace=YOURNAMESPACE
```
