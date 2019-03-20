#!/bin/bash
mkdir PT
cd PT
read -p "Please download the packettracer tar.gz file from Netacad.com, rename the file to packettracer.tar.gz and place it in the PT folder. If you completed these steps, please press ENTER."
sudo apt-get update && sudo apt-get upgrade
wget http://ftp.us.debian.org/debian/pool/main/libp/libpng/libpng12-0_1.2.50-2+deb8u3_amd64.deb
sudo dpkg -i libpng12-0_1.2.50-2+deb8u3_amd64.deb
sudo tar -xvzf 'packettracer.tar.gz'
sudo ./install
sudo apt-get update && sudo apt-get install libqt5webkit5 libqt5multimediawidgets5 libqt5svg5 libqt5script5 libqt5scripttools5 libqt5sql5
cd /opt/pt/bin/
sudo cp Cisco-PacketTracer.desktop /usr/share/applications
cd $homedir
sudo rm -rf PT




