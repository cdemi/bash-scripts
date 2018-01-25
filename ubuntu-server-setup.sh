#!/bin/bash
curl -sL https://deb.nodesource.com/setup_9.x | bash -
apt-get dist-upgrade -y
apt-get install -y mosh tmux nano htop bmon curl python-pip python-dev python-setuptools build-essential traceroute nodejs

pip install --upgrade pip virtualenv youtube

npm install --global speedtest-net

#Install Docker
curl -fsSL get.docker.com | bash
#Install Docker-Compose
curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
curl -L https://raw.githubusercontent.com/docker/compose/1.18.0/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose



#Set Hostname
read -p "What is the machine's full hostname? " hostname
echo $hostname > /etc/hostname
hostname $hostname
