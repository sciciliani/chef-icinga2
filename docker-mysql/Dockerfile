FROM ubuntu:14.04
MAINTAINER Santiago Ciciliani
LABEL version="1.0.0"


RUN apt-get -qq update
RUN apt-get -qq -y upgrade

RUN echo "mysql-server mysql-server/root_password password wptoor" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password wptoor" | debconf-set-selections

RUN DEBIAN_FRONTEND=noninteractive apt-get -qq -y install mysql-server nano telnet mysql-client

RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/g' /etc/mysql/my.cnf
ADD permissions.sql /opt/permissions.sql

EXPOSE 3306

VOLUME  ["/etc/mysql", "/var/lib/mysql"]

CMD ["/usr/bin/mysqld_safe", "--init-file=/opt/permissions.sql" ]


