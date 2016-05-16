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
        code "docker build -t apache2 /root/docker/apache2"
  end

  bash "docker_run" do
        code "docker run -d -p 8080:80 apache2"
  end


end
