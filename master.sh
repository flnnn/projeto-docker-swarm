#!/bin/bash
sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh
sudo docker volume create app

cat /vagrant/index.html > /var/lib/docker/volumes/app/_data/index.html

sudo apt install -y nfs-server

sudo echo "/var/lib/docker/volumes/app/_data *(rw,sync,subtree_check)" >> /etc/exports
sudo exportfs -ar

echo "sudo apt install -y nfs-common" >> /vagrant/worker.sh
echo "sudo mkdir -p /var/lib/docker/volumes/app/_data" >> /vagrant/worker.sh
echo "sudo mount 10.10.10.100:/var/lib/docker/volumes/app/_data /var/lib/docker/volumes/app/_data" >> /vagrant/worker.sh
