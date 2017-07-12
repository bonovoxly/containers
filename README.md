# containers

This project containers various Dockerfiles, docker-compose files, ans ansible-container files.  It's a collection of environments and tools that I use. 

- `devcontainers` - a Docker container meant to act as a DevOps/cloud infrastructure environment.  Has multiple DevOps tools, such as AWS CLI, Azure CLI, GCloud, Ansible, Terraform, etc.
- `docker-compose` - a collection of docker-compose files, used for testing.  

# devcontainer build

- Clone the repository:

```
git clone git@github.com:bonovoxly/containers.git
```

- From the `containers` project directory, setup the environment:

```
cd containers
./virtualenv.sh
```

- Activate the PIP environment:

```
source ./env/bin/activate
```

- Verify ansible-container is active:

```
ansible-container version
```
Output should be something like:
```
Ansible Container, version 0.9.2rc0
```

- See the README.md in the subdirectories for more information on individual projects. In general, it should be the following:

- To build the Docker images change to the project, run:

```
ansible-container build 
```

