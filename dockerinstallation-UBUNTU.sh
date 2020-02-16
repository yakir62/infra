#!/bin/bash

#First, update your existing list of packages:
sudo apt update
#install a few prerequisite packages which let apt use packages over HTTPS:
sudo apt install apt-transport-https ca-certificates curl software-properties-common
#add the GPG key for the official Docker repository to your system:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#Add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
#update the package database with the Docker packages from the newly added repo:
sudo apt update
#install Docker:
sudo apt install -y docker-ce
