# overview

This playbook creates an OpenVPN Docker image using ansible-container.

# quickstart

- To build the Docker images change to the project, run:

```
ansible-container build --with-volumes ${PWD}../ansible-roles:/roles
```

Docker image should build.

- To push the Docker images, run:

```
ansible-container --debug push --with-volumes ${PWD}../ansible-roles:/roles --with-variables docker_url=https://YOUR.DOCKERREGISTRY.COM,docker_namespace=YOURNAMESPACE
```
