# basic ubuntu image
FROM ubuntu:bionic

ENV DEBIAN_FRONTEND=noninteractive

# installing sql-server
RUN apt-get update && apt-get install -y \
	mysql-server \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

# directory creation
RUN mkdir -p /var/run/mysqld \
	&& chown -R mysql:mysql /var/run/mysqld

# copying configuration file
COPY ./configuration/mysqld.cnf /etc/mysql/mysql.conf.d/
# copying file for user creation
COPY ./user.sql /user.sql

RUN /etc/init.d/mysql start \
	&& mysql -u root < /user.sql \
	&& /etc/init.d/mysql stop

# setting up port
EXPOSE 3306

ENTRYPOINT ["mysqld_safe"]
