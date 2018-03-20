#!/bin/bash



sudo -i 

echo "10.0.0.10   datalab--0--kube-master-" >> /etc/hosts
echo "10.0.0.20   datalab--0--kube-minion-" >> /etc/hosts
echo "10.0.0.21   datalab--1--kube-minion-" >> /etc/hosts
echo "10.0.0.22   datalab--2--kube-minion-" >> /etc/hosts
echo "10.0.0.23   datalab--3--kube-minion-" >> /etc/hosts
