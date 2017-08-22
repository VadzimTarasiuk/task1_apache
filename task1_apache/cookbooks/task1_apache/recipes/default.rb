#
# Cookbook:: task1_apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

package 'php' do
  action :install
end

file '/var/www/html/test.php' do
  content "<?php\n phpinfo();\n ?>"
  mode '0755'
  owner 'vagrant'
  group 'vagrant'
end

service 'httpd' do
  action [ :enable, :start ]
end
