#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2012, DiUS
#
# All rights reserved - Do Not Redistribute
#

package "mysql-server" do
 action [ :install ]
end

package "mysql" do
 action [ :install ]
end

service "mysqld" do
  supports :status => true, :restart => true, :reload => true, :initdb => true
  action [ :enable ]
end
