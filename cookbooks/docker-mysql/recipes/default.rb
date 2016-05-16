#
# Cookbook Name:: crontab
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
directory '/opt/logship' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

directory '/opt/logship/log' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

cookbook_file "/opt/logship/logship.sh" do
	source "logship.sh"
	mode 755
end

cookbook_file "/opt/logship/apache2.config" do
	source "apache2.config"
	mode 644
end

cookbook_file "/opt/logship/mysql.config" do
	source "mysql.config"
	mode 644
end


cron "daily_7pm_logship" do
  minute "0"
  hour "19"
  user "root"
  command "/opt/logship/logship.sh 2>&1 >> /opt/logship/log/logship.log"
end
