#!/bin/bash



sudo -i 	  

echo dm_snapshot >> /etc/modules-load.d/modules.conf
echo dm_mirror >> /etc/modules-load.d/modules.conf
echo dm_thin_pool >> /etc/modules-load.d/modules.conf
systemctl restart systemd-modules-load.service
 
modprobe dm_thin_pool

./edit-etc-hosts.sh
