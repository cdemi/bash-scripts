#!/bin/bash
apt-get update
apt-get dist-upgrade -y
apt-get install -y mosh tmux apt-transport-https ca-certificates curl software-properties-common

#Install Docker
curl -fsSL get.docker.com | bash
apt-get install -y docker-compose

#Set Hostname
echo What is full hostname?
read hostname
echo $hostname > /etc/hostname

reboot