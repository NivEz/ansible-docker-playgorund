FROM ubuntu:latest

RUN apt update -y && \
    apt install -y \
    iputils-ping

RUN mkdir /root/shared
