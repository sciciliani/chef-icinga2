#
# Cookbook Name:: icinga2-apache2
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'apt'
if node["platform"] == "ubuntu"
	package "apache2"
	package "php5"
	package "php5-mysql"
	package "php5-curl"
end

