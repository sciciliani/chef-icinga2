#
# Cookbook Name:: icinga2
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'apt'

if node["platform"] == "ubuntu"
  package "curl"

  bash "apt-key add docker" do
    code "curl http://packages.icinga.org/icinga.key | apt-key add -"
    not_if "apt-key list | grep Icinga"
  end

  file '/etc/apt/sources.list.d/icinga2.list' do
    source "icinga2.list"
    notifies :run, "execute[apt-get update]", :immediately
  end

  package "icinga2"
  package "icinga2-ido-mysql"
  package "icinga-web"
  package "nagios-plugins"
  package "icingaweb2"
  package "icingacli"

  directory '/etc/icingaweb2' do
    source 'icingaweb2'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
  end

end
