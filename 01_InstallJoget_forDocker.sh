#!/bin/bash

#https://dev.joget.org/community/display/KBv6/Joget+Workflow+on+Docker
docker run -d -p 8080:8080 -v /var/lib/mysql --name joget jogetworkflow/joget-enterprise
