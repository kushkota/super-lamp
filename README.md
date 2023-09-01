# super-lamp

# What is NGINX?

NGINX

Summary      : A high performance web server and reverse proxy server


# Install NGINX on Amazon Linux

$ sudo dnf install -y nginx

### why am i using dnf?
$ cat /etc/system-release

Amazon Linux release 2023 (Amazon Linux)

### what is dnf btw?
DNF  is the next upcoming major version of YUM, a package manager for RPM-based Linux distributions.

dnf - DNF Command Reference

#### how you know your system is RPM-based Linux distributions?
$ cat /etc/os-release | grep ID_LIKE

ID_LIKE="fedora"

### more on this later

$ sudo systemctl start nginx

$ sudo systemctl enable !$

$ sudo systemctl is-enabled nginx

$ sudo systemctl status nginx

sudo usermod -a -G !$ ec2-user


### house check

$ nginx -v

$ sudo dnf info nginx




# The NGINX command-line interface

$ nginx -h

# nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful

# NGINX files and directories

nginx: the configuration file /etc/nginx/nginx.conf 

/var/log/nginx/


# Inside nginx.conf

# Run commands on your Linux instance at launch

Invalid unit name "!$" escaped as "!\x24" (maybe you should use systemd-escape?).
Failed to start !\x24.service: Unit name !\x24.service is not valid.
See system logs and 'systemctl status !\x24.service' for details.
Invalid unit name "!$" escaped as "\x21\x24" (maybe you should use systemd-escape?).
Failed to enable unit: Unit file \x21\x24.service does not exist.
usermod: group '!$' does not exist



#### Retrieve instance user data
TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"` && curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/user-data


#!/bin/bash
yum update -y
# amazon-linux-extras install -y 
yum install -y nginx tree http
systemctl start !$
systemctl enable !$
usermod -a -G !$  ec2-user
# chown -R ec2-user:apache /var/www
# chmod 2775 /var/www
# find /var/www -type d -exec chmod 2775 {} \;
# find /var/www -type f -exec chmod 0664 {} \;
* Closing connection 0
# echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php



# Configure a virtual host, part 1

cat /etc/nginx/conf.d/binaryville.conf
server {

        listen 80;
        root /var/www/binaryville;
}

nginx -t # TEST
systemctl reload nginx

mkdir -p /var/www/binaryville # server config 


# Configure a virtual host, part 2

https://nginx.org/en/docs/http/request_processing.html

nginx -t ???
systemctl reload nginx
curl localhost

