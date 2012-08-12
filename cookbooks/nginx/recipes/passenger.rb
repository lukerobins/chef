
gem_package "passenger" do
 action :install
end

yum_package "openssl" do
 action :upgrade
end

yum_package "openssl-devel" do
 action :install
 arch "x86_64"
end

yum_package "libcurl-devel" do
 action :install
 arch "x86_64"
end

execute "buildmodule" do
  not_if do
    File.exists?("/usr/lib64/ruby/gems/1.9/gems/passenger-#{passenger_version}/ext/apache2/mod_passenger.so")
  end
  command "/usr/bin/passenger-install-nginx-module --auto"
  action :run
  notifies :restart, "service[nginx]"
end
#cookbook_file "/etc/nginx/conf.d/passenger.conf" do
#  owner "nginx"
#  group "nginx"
#  mode "400"
#  source "passenger.conf"
#end

