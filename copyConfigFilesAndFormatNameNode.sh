#!/bin/sh

copy hadoopFiles/core-site.xml /opt/hadoop/etc/hadoop
copy hadoopFiles/mapred-site.xml /opt/hadoop/etc/hadoop
copy hadoopFiles/hdfs-site.xml /opt/hadoop/etc/hadoop
copy hadoopFiles/yarn-site.xml /opt/hadoop/etc/hadoop

hadoop namenode -format
