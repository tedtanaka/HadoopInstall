#!/bin/sh

echo "Generating ssh keys as hduser"

if [ ! -d "/home/hduser/.ssh" ]; then
	echo "creating directory /home/hduser/.ssh"
	mkdir /home/hduser/.ssh
	chown hduser:hadoop /home/hduser/.ssh
fi

ssh-keygen -t rsa -P "" -f /home/hduser/.ssh/id_rsa
cat /home/hduser/.ssh/id_rsa.pub >> /home/hduser/.ssh/authorized_keys
echo "hello" > /tmp/tmp1
rm -f /tmp/tmp2
scp /tmp/tmp1 localhost:/tmp/tmp2

