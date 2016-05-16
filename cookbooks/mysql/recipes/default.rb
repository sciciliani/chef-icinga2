#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'initialize my_company database' do
  command "mysql -h 127.0.0.1 -u db_admin -pdatabase_password -D my_company < /tmp/create-tables.sql"
  not_if  "mysql -h 127.0.0.1 -u db_admin -pdatabase_password -D my_company -e 'describe customers;'"
end
