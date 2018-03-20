#!/bin/bash



sudo -i 	  

echo dm_snapshot >> /etc/modules-load.d/modules.conf
echo dm_mirror >> /etc/modules-load.d/modules.conf
echo dm_thin_pool >> /etc/modules-load.d/modules.conf
systemctl restart systemd-modules-load.service
 
modprobe dm_thin_pool

echo "10.0.0.10   datalab--0--kube-master-" >> /etc/hosts
echo "10.0.0.20   datalab--0--kube-minion-" >> /etc/hosts
echo "10.0.0.21   datalab--1--kube-minion-" >> /etc/hosts
echo "10.0.0.22   datalab--2--kube-minion-" >> /etc/hosts
echo "10.0.0.23   datalab--3--kube-minion-" >> /etc/hosts
