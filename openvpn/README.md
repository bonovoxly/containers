# overview

This playbook creates an OpenVPN Docker image using ansible-container.

# container customizations

 Aside from the normal settings of OpenVPN, this container adds the following scripts:

- build-ca-automated
- build-key-server-automated
- build-key-automated

These scripts are the non-interactive versions of the EasyRSA CA, server, and client key/cert generation scripts. More information can be found in [`linux.openvpn_install` role](https://github.com/bonovoxly/containers/tree/master/ansible-roles/linux.openvpn_install).

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
