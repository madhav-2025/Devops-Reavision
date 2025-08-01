setup 0 EC2 Ubuntu reinstall jenkins
sudo cp -r /var/lib/jenkins /home/ubuntu/jenkins_backup              # For Bakup usefull or important file optnal

 Step 1: Jenkins Completely Remove Karo

 sudo systemctl stop jenkins
 sudo apt-get remove --purge jenkins -y
 sudo apt-get autoremove -y
 sudo apt-get autoclean

Jenkins ke Config Files bhi Delete Karo (Clean Reset)
sudo rm -rf /var/lib/jenkins
sudo rm -rf /etc/default/jenkins
sudo rm -rf /etc/init.d/jenkins
sudo rm -rf /var/log/jenkins

######################
Install fresh
######################
first update System
 -     sudo apt update && sudo apt upgrade -y
Jenkins Fresh Install Karo
# Java install (Jenkins ke liye required)
sudo apt install openjdk-17-jdk -y

# Jenkins repo add karo
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Jenkins install
sudo apt update
sudo apt install jenkins -y

######################
jenkins Starting 
####################
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo system -----------(All command start,restrat etc)

#####################
Initial Admin Password Dekho
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
######################
Browseropen 
http://<your-ec2-public-ip>:8080

##############################
Full scripting
##############################

#!/bin/bash

echo "🔴 Stopping and Removing Jenkins Completely..."

sudo systemctl stop jenkins
sudo apt-get remove --purge jenkins -y
sudo apt-get autoremove -y
sudo apt-get autoclean

echo "🧹 Deleting all Jenkins configuration and data files..."
sudo rm -rf /var/lib/jenkins
sudo rm -rf /etc/default/jenkins
sudo rm -rf /etc/init.d/jenkins
sudo rm -rf /var/log/jenkins
sudo rm -rf /etc/apt/sources.list.d/jenkins.list
sudo rm -rf /usr/share/keyrings/jenkins-keyring.asc

echo "✅ Jenkins completely removed."

echo "📦 Updating system..."
sudo apt update && sudo apt upgrade -y

echo "☕ Installing Java (OpenJDK 17)..."
sudo apt install openjdk-17-jdk -y

echo "🌐 Adding Jenkins Repository..."
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

echo "📦 Installing Jenkins..."
sudo apt update
sudo apt install jenkins -y

echo "🚀 Starting Jenkins..."
sudo systemctl start jenkins
sudo systemctl enable jenkins

echo "🔑 Initial Admin Password (copy this):"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo "✅ Jenkins setup done. Open in browser: http://<your-ec2-public-ip>:8080"

for eXcute and Run
chmod +x jenkins_reinstall.sh
./jenkins_reinstall.sh
