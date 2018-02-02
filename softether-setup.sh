#!/bin/bash
apt-get update
apt-get install -y wget build-essential
cd /tmp
wget -qO- http://www.softether-download.com/files/softether/v4.25-9656-rtm-2018.01.15-tree/Linux/SoftEther_VPN_Server/64bit_-_Intel_x64_or_AMD64/softether-vpnserver-v4.25-9656-rtm-2018.01.15-linux-x64-64bit.tar.gz | tar xvz
mv vpnserver/ /opt/
cd /opt/vpnserver/
make i_read_and_agree_the_license_agreement