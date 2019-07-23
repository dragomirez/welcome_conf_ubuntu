#!/bin/bash

echo "So, let's start with Ansible"

sudo apt update -y
sudo apt install software-properties-common -y 
sudo apt-add-repository ppa:ansible/ansible -y 
sudo apt update -y 
sudo apt install ansible -y 
ansible 

echo "Now let's install Python3-pip"

sudo apt update -y 
sudo apt install python3-pip -y
pip3 --version

echo "We will end with Docker"

sudo apt-get update -y 
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io -y 

