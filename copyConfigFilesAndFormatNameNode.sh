#!/bin/sh

echo "Copying hadoopy configuration files"
cp hadoopFiles/core-site.xml /opt/hadoop/etc/hadoop
cp hadoopFiles/mapred-site.xml /opt/hadoop/etc/hadoop
cp hadoopFiles/hdfs-site.xml /opt/hadoop/etc/hadoop
cp hadoopFiles/yarn-site.xml /opt/hadoop/etc/hadoop

echo "Formatting name node"
hadoop namenode -format
