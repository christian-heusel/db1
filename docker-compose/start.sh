#!/bin/bash

set -o nounset                              # Treat unset variables as an error

cd /home/chris/Documents/db1 && \
gksu -u root -m "root authentication is required to start docker" "systemctl start docker.service && docker-compose up -d" 2> /dev/null && \
sleep 2 && \
firefox http://localhost:8080


