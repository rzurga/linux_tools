#
# Cookbook Name:: linux_tools
# Recipe:: ca_certificates
#
# Copyright 2016, vagrant@zurga.com
#
# All rights reserved - Do Not Redistribute
#

package "ca-certificates" do
  action :install
end

# Fix CA Certs issue for downloading the Java SDK
bash "CA Certs" do
    user "root"
    action :run
    not_if { ::File.directory?("/etc/pki/tls/certs") }
    code <<-EOD
        mkdir -p /etc/pki/tls/certs
        cp /etc/ssl/certs/ca-certificates.crt /etc/pki/tls/certs/ca-bundle.crt
    EOD
end
