#!/bin/bash

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl

sudo -i

sed "/registry.fedoraproject.org/c  - index.docker.ro \n" registries.conf

echo "10.0.0.10   datalab--0--kube-master-" >> /etc/hosts
echo "10.0.0.20   datalab--0--kube-minion-" >> /etc/hosts
echo "10.0.0.21   datalab--1--kube-minion-" >> /etc/hosts
echo "10.0.0.22   datalab--2--kube-minion-" >> /etc/hosts
echo "10.0.0.23   datalab--3--kube-minion-" >> /etc/hosts

