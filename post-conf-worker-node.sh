#!/bin/bash

./edit-etc-hosts.sh

sudo -i

sed "/ registry.fedoraproject.org/c index.docker.ro \n" /etc/containers/registries.conf
systemctl restart docker
