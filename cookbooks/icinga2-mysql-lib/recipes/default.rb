#
# Cookbook Name:: icinga2-mysql
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

mysql_service 'default' do
  version '5.6'
  bind_address '0.0.0.0'
  port '3306'
  data_dir '/var/lib/mysql'
  initial_root_password 'toor'
  action [:create, :start]
end
