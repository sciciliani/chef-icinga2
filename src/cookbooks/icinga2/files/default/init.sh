#!/bin/bash

echo "Initializing environment..."
mysql -ptoor < /tmp/icinga2.sql
tar -xvzf /tmp/icinga2.conf.tgz -C /


