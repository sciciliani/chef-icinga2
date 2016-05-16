FROM ubuntu:14.04
MAINTAINER Santiago Ciciliani
LABEL version="1.0.0"


RUN apt-get -qq update
RUN apt-get -qq -y upgrade

RUN DEBIAN_FRONTEND=noninteractive apt-get -qq -y install apache2 php5 libapache2-mod-php5 python python-pip php5-mysql

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


