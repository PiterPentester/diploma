#!/bin/sh

# Bootstrap master

### configure hosts
echo "10.0.0.11  w1.workplace.io  w1
10.0.0.12  w2.workplace.io  w2" >> /etc/hosts

sed -i 's|^127.0.0.1|127.0.0.1   m.workplace.io|' /etc/hosts

### Install ansible
sudo yum update -y && sudo yum upgrade -y

sudo yum install -y yum-utils epel-release

sudo yum install ansible git -y


### Install python3.8
sudo yum install gcc openssl-devel libffi-devel bzip2-devel wget nano -y

cd /opt
sudo wget https://www.python.org/ftp/python/3.8.5/Python-3.8.5.tgz
sudo tar xzvf Python-3.8.5.tgz
cd Python-3.8.5/
sudo ./configure --enable-optimizations
sudo make altinstall
#sudo ln -fs /usr/local/bin/python3.8 /usr/bin/python3
