#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{mysql mysql-server mysql-devel}.each do |pkg|
  package pkg do
    action :install
  end
end

service "mysqld" do
  action [ :enable, :start ]
end

