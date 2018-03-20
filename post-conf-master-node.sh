#!/bin/bash

./edit-etc-hosts.sh

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl

sudo -i

sed "/ registry.fedoraproject.org/c index.docker.ro \n" /etc/containers/registries.conf
systemctl restart docker

