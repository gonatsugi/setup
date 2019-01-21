#!/bin/bash
cd /usr/local/src
curl -L -O "https://download.java.net/java/ga/jdk11/openjdk-11_linux-x64_bin.tar.gz"
tar zxf openjdk-11_linux-x64_bin.tar.gz -C /usr/local
alternatives --install /usr/bin/java java /usr/local/jdk-11/bin/java 2
alternatives --install /usr/bin/jar jar /usr/local/jdk-11/bin/jar 2
alternatives --install /usr/bin/javac javac /usr/local/jdk-11/bin/javac 2
alternatives --set jar /usr/local/jdk-11/bin/jar
alternatives --set javac /usr/local/jdk-11/bin/javac
export JAVA_HOME=/usr/local/jdk-11
export PATH=$PATH:/usr/local/jdk-11/bin
yum -y install wget
cd /usr/local/src
wget http://ftp.kddilabs.jp/infosystems/apache/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
tar zxf apache-tomcat-8.5.37.tar.gz
mv apache-tomcat-8.5.37 /usr/tomcat
useradd -M -d /usr/tomcat tomcat
cd /usr/tomcat/webapps
wget http://dl1.gs.sjts.co.jp/v4/download/files/4.9.1/gsession.war
firewall-cmd  --permanent --add-port=8080/tcp
firewall-cmd --reload
chown -hR tomcat:tomcat /usr/tomcat/