#
# Cookbook Name:: docker-mysql
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'apt'

if node["platform"] == "ubuntu"


  remote_directory '/root/docker' do
    source "docker"
  end

  bash "docker_build" do
	code "docker build -t mysql /root/docker/mysql"
  end

  bash "docker_run" do
	code "docker run -d -p 3206:3306 mysql"
  end

  
end
