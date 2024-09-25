#!/bin/bash


sudo apt update
sudo apt install -y git
sudo apt-get install fontconfig openjdk-17-jre
java -version
sudo apt install -y maven
mvn -version
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key
sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
echo "Installation complete!"
echo "Access Jenkins at http://localhost:8080"
