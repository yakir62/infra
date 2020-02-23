#!/bin/bash

#update your existing list of packages:
sudo yum check-update

#add GPG key for the official Docker repository
curl -fsSL https://get.docker.com/ | sh

#start the Docker daemon:
sudo systemctl start docker

#make sure it starts at every server reboot:
sudo systemctl enable docker

#add vagrant username to the docker group
sudo usermod -aG docker $(vagrant)
