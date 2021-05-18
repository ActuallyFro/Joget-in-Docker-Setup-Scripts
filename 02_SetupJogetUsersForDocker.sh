#!/bin/bash

#From: https://www.digitalocean.com/community/questions/how-to-fix-docker-got-permission-denied-while-trying-to-connect-to-the-docker-daemon-socket

sudo groupadd docker
sudo usermod -aG docker ${USER}

sudo reboot

#DOES NOT work as script
#su -s ${USER}
#
#docker run hello-world

echo "Re-log back into the user account, and try 'docker run hello-world'"
