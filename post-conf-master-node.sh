#!/bin/bash

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl

sudo -i

sed "/registry.fedoraproject.org/c  - index.docker.ro \n" registries.conf

./edit-etc-hosts.sh

