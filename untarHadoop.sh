#!/bin/sh

echo "untar'ing hadoop into /opt"
cd /opt
sudo tar xvfz /tmp/hadoop-2.2.0.tar.gz

echo "renaming hadoop in /opt"
sudo mv /opt/hadoop-2.2.0 /opt/hadoop

echo "updating user:group of hadoop files"
sudo chown -R hduser:hadoop /opt/hadoop
