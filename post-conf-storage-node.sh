#!/bin/bash

./edit-etc-hosts.sh

sudo -i 	  

echo dm_snapshot >> /etc/modules-load.d/modules.conf
echo dm_mirror >> /etc/modules-load.d/modules.conf
echo dm_thin_pool >> /etc/modules-load.d/modules.conf
systemctl restart systemd-modules-load.service
 
modprobe dm_thin_pool

sed "/ registry.fedoraproject.org/c index.docker.ro \n" /etc/containers/registries.conf
systemctl restart docker
