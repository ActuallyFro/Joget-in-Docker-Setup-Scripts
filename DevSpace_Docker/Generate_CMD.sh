#!/bin/bash

#wget https://download.docker.com/linux/ubuntu/dists/hirsute/pool/stable/amd64/docker-ce-cli_20.10.6~3-0~ubuntu-hirsute_amd64.deb
#sudo dpkg -i docker-ce-cli_20.10.6~3-0~ubuntu-hirsute_amd64.deb

docker volume create devspace

docker run -it --rm -v devspace:/mymaven -w /mymaven jogetworkflow/docker-maven-joget:7.0-SNAPSHOT mvn archetype:generate -DarchetypeGroupId="org.joget" -DarchetypeArtifactId="wflow-plugin-archetype" -DarchetypeVersion="7.0-SNAPSHOT" -DgroupId="org.joget.plugin" -DartifactId="custom-plugin"

sudo ls /var/lib/docker/volumes/devspace/_data/custom-plugin
