#!/bin/sh

# Verify hadoop has been installed in /opt/hadoop

if [ ! -d "/opt/hadoop" ]; then
	echo "Directory /opt/hadoop does not exist, please install hadoop there"
	exit 1
fi
