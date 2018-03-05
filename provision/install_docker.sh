#!/bin/bash

# https://docs.docker.com/install/linux/docker-ce/ubuntu/

sudo apt update

sudo apt -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update

sudo apt install -y docker-ce

sudo usermod -aG docker vagrant

sudo systemctl enable docker
