#!/bin/bash

ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
cp /root/.ssh/id_rsa.pub /root/shared
