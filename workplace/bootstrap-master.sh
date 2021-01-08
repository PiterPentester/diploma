#!/bin/sh

# Bootstrap master

### configure hosts
echo "10.0.0.11  w1.workplace.io  w1
10.0.0.12  w2.workplace.io  w2" >> /etc/hosts

sed -i 's|^127.0.0.1|127.0.0.1   m.workplace.io|' /etc/hosts

### Install ansible
sudo yum update -y && sudo yum upgrade -y

sudo yum install -y yum-utils

sudo yum install -y nano wget ansible -y
