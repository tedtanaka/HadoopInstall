#!/bin/sh

sudo apt-get update
echo "Installing SSH server"
sudo apt-get install openssh-server

# Open firewall for port 22
echo "Opening firewall for port 22"
sudo ufw allow 22
