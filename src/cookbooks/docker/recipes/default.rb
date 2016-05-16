#
# Cookbook Name:: docker
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
    code "apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D"
    not_if "apt-key list | grep Docker"
  end

  file '/etc/apt/sources.list.d/docker.list' do
    content "deb https://apt.dockerproject.org/repo ubuntu-trusty main"
    notifies :run, "execute[apt-get update]", :immediately
  end

  case node["platform_version"]
  when "12.04"
    package "linux-image-generic-lts-raring"
    package "linux-headers-generic-lts-raring"
  when "13.04"
    package "linux-image-extra-#{`uname -r`.strip}"
  when "14.04"
    package "linux-image-extra-#{`uname -r`.strip}"
  end

  package "docker-engine"
end
