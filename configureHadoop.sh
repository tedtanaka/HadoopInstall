#!/bin/sh

#
# Add hduser if it doesn't already exist
#
ret=false
getent passwd hduser > /dev/null 2>&1 && ret=true

if $ret; then
	echo "hduser exists"
else
	echo "hduser does not exist, adding"
	sudo addgroup hadoop
	sudo adduser --ingroup hadoop hduser
fi

#
# Verify hadoop working dir has been created
#
if [ ! -d "/var/hadoop" ]; then
	echo "Directory /var/hadoop does not exist, creating"
	sudo mkdir /var/hadoop
	sudo chown hduser:hadoop /var/hadoop
fi

#
# Verify hadoop has been installed in /opt/hadoop
#
if [ ! -d "/opt/hadoop" ]; then
	echo "Directory /opt/hadoop does not exist, please install hadoop there"
	exit 1
fi


