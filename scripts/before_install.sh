#!/bin/bash

# navigate to app folder
cd /app

# install node and npm
apt-get install curl
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
apt-get install nodejs -y
apt-get install npm -y
apt install nginx -y

# Enable Nginx to start automatically on system boot
systemctl enable nginx

# Start Nginx
systemctl start nginx

# Allow HTTP traffic through the firewall
ufw allow 'Nginx HTTP'
