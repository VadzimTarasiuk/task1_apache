# # encoding: utf-8

# Inspec test for recipe task1_apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
describe package('httpd') do
  it { should be_installed }
end

describe package('php') do
  it { should be_installed }
end

describe service('httpd') do
  it { should be_enabled }
  it { should be_running }
end

describe command('curl -IL localhost/test.php') do
  its('stdout') { should match /200 OK/ }
end

describe command('cat /var/www/html/test.php') do
  its('stdout') { should match /phpinfo/ }
end
