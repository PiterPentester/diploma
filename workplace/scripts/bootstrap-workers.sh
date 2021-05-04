#!/bin/sh

# Bootstrap agents

sudo yum update -y && sudo yum upgrade -y

### Install python3.8
sudo yum install gcc openssl-devel libffi-devel bzip2-devel wget nano -y

cd /opt
sudo wget https://www.python.org/ftp/python/3.8.5/Python-3.8.5.tgz
sudo tar xzvf Python-3.8.5.tgz
cd Python-3.8.5/
sudo ./configure --enable-optimizations
sudo make altinstall

sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

sudo systemctl restart sshd.service
#sudo ln -fs /usr/local/bin/python3.8 /usr/bin/python3
