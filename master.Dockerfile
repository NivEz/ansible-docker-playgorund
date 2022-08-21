FROM ansible-docker-base:latest

RUN apt install ansible -y

RUN mkdir /etc/ansible

# config that allows ansible playbook to run over ssh without fingerprint prompt
RUN \
echo '[defaults] \n\
host_key_checking = False' > /etc/ansible/ansible.cfg

RUN mkdir /root/ansible


WORKDIR /root/ansible

COPY ./inventory.yaml .
COPY ./playbook.yaml .

COPY ./entrypoint-master.sh ./entrypoint.sh

CMD ./entrypoint.sh && sleep infinity