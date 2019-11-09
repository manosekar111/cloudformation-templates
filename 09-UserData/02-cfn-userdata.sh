#!/bin/bash
sudo yum -y update
sudo yum -y install ruby wget
sudo yum -y erase java-1.7.0-openjdk.x86_64
sudo yum -y install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel
sudo yum -y install tomcat8
sudo service tomcat8 start
sudo mkdir -p /usr/share/tomcat8/webapps/ROOT
sudo touch /usr/share/tomcat8/webapps/ROOT/index.html
sudo echo "Welcome to Etechbrain Production" > /usr/share/tomcat8/webapps/ROOT/index.html        
sudo cd /home/ec2-user
sudo wget https://aws-codedeploy-ap-south-1.s3.amazonaws.com/latest/install
sudo chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start           