FROM ansible-docker-base:latest

RUN apt install -y openssh-server

RUN mkdir /root/.ssh

RUN cd /root/shared && ls -la

COPY ./entrypoint-node.sh ./entrypoint.sh

RUN sed -i -e 's/\r$//' ./entrypoint.sh

CMD ./entrypoint.sh && sleep infinity

