# Ansible & Docker playground

#### Playing with Ansible via Docker containers
In this repo you can set up a playground of docker containers (1 master and multiple nodes according to the replicas number in the `docker-compose.yaml`). The nodes can be controlled via ansible playbooks from the master container which can be accessed via ssh (`exec` command). 


### Set up:

To build the images with docker compose in the right order (since using base image) use the command: 

```
DOCKER_BUILDKIT=0 docker-compose build
```

To run the images:
```
docker compose up -d
```

Inside the master container (ssh into the container or use Portainer UI) you can execute ansible playbook (all the mounted files will be in `ansible` dir):
```
cd ansible
ansible-playbook -i inventory.yaml playbook.yaml
```
This playbook will execute tasks via SSH in the nodes.
