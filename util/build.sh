#!/bin/bash

# Install Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get -y update
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get -y install docker-ce

# Install a specified nginx container
sudo docker volume create data-volume
sudo docker build -t nginx:my_version01 .
sudo docker run --rm -d --name=nginx01 -p 80:80 \
         --mount source=data-volume,target=/usr/share/nginx/html/log  \
# Under below if command way to add health check
#        --health-cmd="curl --silent --fail localhost:80 || exit 1" \
#        --health-interval=10s \
#        --health-retries=12 \
#        --health-timeout=2s \
         nginx:my_version01
