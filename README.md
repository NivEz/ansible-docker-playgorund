To build the images with docker compose in the right order (since using base image) use the command: 

```
DOCKER_BUILDKIT=0 docker-compose build
```

In the master container you can execute ansible playbook:
```
ansible-playbook -i inventory.yaml playbook.yaml
```
This playbook will execute tasks via SSH in the nodes.

