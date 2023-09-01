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

# NGINX files and directories

nginx: the configuration file /etc/nginx/nginx.conf 

/var/log/nginx/


# Inside nginx.conf




