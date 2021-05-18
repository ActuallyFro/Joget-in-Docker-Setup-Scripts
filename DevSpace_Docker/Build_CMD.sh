#!/bin/bash

docker run -it --rm -v devspace:/mymaven -w /mymaven jogetworkflow/docker-maven-joget:7.0-SNAPSHOT mvn clean install
