#!/bin/bash
curl -sL https://deb.nodesource.com/setup_9.x | bash -
apt-get dist-upgrade -y
apt-get install -y mosh tmux nano htop bmon curl python-pip python-dev python-setuptools build-essential traceroute nodejs

pip install --upgrade pip virtualenv youtube

npm install --global speedtest-net

#Install Docker
curl -fsSL get.docker.com | bash
apt-get install -y docker-compose

#Set Hostname
read -p "What is the machine's full hostname? " hostname
echo $hostname > /etc/hostname
hostname $hostname
