# basic ubuntu image
FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# setting up apache2 environment variables
ENV APACHE_RUN_DIR /var/run/apache2 
ENV	APACHE_RUN_USER www-data 
ENV	APACHE_RUN_GROUP www-data 
ENV	APACHE_LOG_DIR /var/log/apache2 
ENV	APACHE_PID_FILE /var/run/apache2.pid 
ENV	APACHE_LOCK_DIR /var/lock/apache2

# installing php, apache2 and imagemagick
RUN apt-get update && apt-get install -y \
	apache2 \
	php \
	libapache2-mod-php \
	php-imagick && apt-get clean && rm -rf /var/lib/apt/lists/* 

# copying configuration files
COPY ./configuration/my.conf    /etc/httpd/conf.d/
COPY ./configuration/000-default.conf    /etc/apache2/sites-available/
COPY ./configuration/ports.conf     /etc/apache2/

# setting up port for listening
EXPOSE 8080

ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]