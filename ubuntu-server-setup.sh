#!/bin/bash
apt-get update
apt-get dist-upgrade -y
apt-get install -y mosh tmux nano

#Install Docker
curl -fsSL get.docker.com | bash
apt-get install -y docker-compose

#Set Hostname
read -p "What is the machine's full hostname? " hostname
echo $hostname > /etc/hostname
hostname $hostname