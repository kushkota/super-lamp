#!/bin/bash
dnf update -y
dnf install -y nginx git
systemctl start nginx
systemctl enable nginx
systemctl is-enabled nginx
usermod -a -G nginx ec2-user
mkdir -p /var/www/binaryville
chown -R ec2-user:nginx /var/www
chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} \;
find /var/www -type f -exec chmod 0664 {} \;
git clone https://github.com/LinkedInLearning/learning-nginx-2492317.git 
cd learning-nginx-2492317
tar xvf Binaryville_robot_website_LIL_107684.tgz --directory /var/www/binaryville

