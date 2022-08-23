To build the images with docker compose in the right order (since using base image) use the command: 

```
DOCKER_BUILDKIT=0 docker-compose build
```

To run the images:
```
docker compose up -d
```

In the master container you can execute ansible playbook (all the mounted files will be in `ansible` dir):
```
cd ansible
ansible-playbook -i inventory.yaml playbook.yaml
```
This playbook will execute tasks via SSH in the nodes.
