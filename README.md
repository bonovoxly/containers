# containers

This project uses the very alpha release of ansible-container to create and manage Docker containers using Ansible.  It establishes an ansible-container environment and creates the following Docker images:

- `generaldev` - a Docker image to run interactively, for testing and/or random development.
- `azuredev` - a Docker image to run interactively, for use with Azure Resource Manager and Ansible.
- `awsdev` - a Docker image to run interactively, for use with Amazon Web Services and Ansible.

Note these use cases are a bit unique and solve a particular niche issue.  However, it also serves as a handy testing environment for [ansible-container](https://github.com/ansible/ansible-container).

# quickstart

- Clone the repository:

```
% git clone git@github.com:bonovoxly/playbook.git
% git clone git@github.com:bonovoxly/containers.git
```

- From the `containers` project directory, setup the environment:

```
% cd containers
% ./environment.sh
```

- Activate the PIP environment:

```
% source ./env/bin/activate
```

- Verify ansible-container is active:

```
% ansible-container version
Ansible Container, version 0.2.0
```

- See the README.md in the subdirectories for more information on individual projects. In general, it should be the following:

- To build the Docker images change to the project, run:

```
ansible-container build --with-volumes ${PWD}../ansible-roles:/roles
```

Docker image should build.

- To push the Docker images, run:

```
ansible-container --debug push --with-volumes ${PWD}../ansible-roles:/roles --with-variables docker_url=https://YOUR.DOCKERREGISTRY.COM,docker_namespace=YOURNAMESPACE
```
