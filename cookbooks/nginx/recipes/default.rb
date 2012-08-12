#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2012, DiUS
#
# All rights reserved - Do Not Redistribute
#
package "nginx-full" do
  action :install
end

service "nginx" do
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end

#template "/etc/nginx/nginx.conf" do
#  owner "root"
#  group "root"
#  mode "644"
#  source "nginx.conf.erb"
#  notifies :reload, "service[nginx]"
#end

