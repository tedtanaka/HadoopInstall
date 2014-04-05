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


