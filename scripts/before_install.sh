#!/bin/bash

cd /home/ec2-user/server

# install node and npm
apt-get install curl
curl -sL https://rpm.nodesource.com/setup_20.x | sudo -E bash -
yum -y install nodejs npm