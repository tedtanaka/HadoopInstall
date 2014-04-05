#!/bin/sh

echo "export HADOOP_HOME=/opt/hadoop" >> /home/hduser/.bashrc
echo "export PATH=\$PATH:\$HADOOP_HOME/bin" >> /home/hduser/.bashrc
echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64" >> /home/hduser/.bashrc
