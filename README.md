# Installation steps for Icinga2 with IcingaWeb2

##Pre-requisites

```
apt-get update
apt-get upgrade
echo "mysql-server mysql-server/root_password password toor" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password toor" | debconf-set-selections
apt-get install mysql-server mysql-client unzip wget
```

###Add repository to apt

```
curl https://packages.icinga.org/icinga.key | apt-key add -
echo "deb http://packages.icinga.org/ubuntu icinga-trusty main" > /etc/apt/sources.list.d/icinga2.list
```

###Install packages

```
apt-get update
apt-get install icinga2 icinga2-ido-mysql icinga-web nagios-plugins icingaweb2 icingacli
```

### Configure Icinga2

##### Add a PHP timezone
`sed -i 's/;date.timezone =/date.timezone = UTC/g' /etc/php5/apache2/php.ini`

#### Copy configuration files and initialize the database

```
icingacli setup config directory --group www-data
wget  --no-cookies "https://s3.amazonaws.com/icinga2-deploy/icinga2-config.tgz" -O /tmp/icinga2-config.tgz
tar -xvzf /tmp/icinga2-config.tgz -C /
find /etc/icingaweb2 -type f -name "*.ini" -exec chmod 660 {} \;
find /etc/icingaweb2 -type d -exec chmod 2770 {} \;
chmod 755 /opt/init.sh
/opt/init.sh
```

#### Enable Icinga2 API for Icinga2web

```
icinga2 api setup
sed -i -e 's/^.* NodeName = .*/const NodeName = "docker-icinga2"/gi' /etc/icinga2/constants.conf
icinga2 pki new-cert --cn docker-icinga2 --key /etc/icinga2/pki/docker-icinga2.key --csr /etc/icinga2/pki/docker-icinga2.csr
icinga2 pki sign-csr --csr /etc/icinga2/pki/docker-icinga2.csr --cert /etc/icinga2/pki/docker-icinga2.crt
```


