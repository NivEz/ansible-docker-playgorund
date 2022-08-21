#!/bin/bash

cat /root/shared/id_rsa.pub > /root/.ssh/authorized_keys

service ssh start
