#
# Cookbook Name:: chatsecure_ssl
# Recipe:: default
#
# Copyright 2014, Chris Ballinger
#
# MIT License
#

# SSL
ssl_databag_name = node['chatsecure_ssl']['ssl_databag_name']
certs_item = node['chatsecure_ssl']['ssl_databag_certs_item']
keys_item = node['chatsecure_ssl']['ssl_databag_keys_item']
certs = data_bag_item(ssl_databag_name, certs_item)
keys = data_bag_item(ssl_databag_name, keys_item)
cert_name = node['chatsecure_ssl']['ssl_cert']
key_name = node['chatsecure_ssl']['ssl_key']
ssl_key = keys[key_name]
cert = certs[cert_name]
user = node['chatsecure_ssl']['ssl_user']
group = node['chatsecure_ssl']['ssl_group']

directory node['chatsecure_ssl']['ssl_dir'] do
  mode "770"
  user user
  group group
  action :create
  recursive true
end

# Copy SSL cert
file node['chatsecure_ssl']['ssl_dir'] + node['chatsecure_ssl']['ssl_cert'] do
  content cert
  mode "770"
  user user
  group group
  action :create
end

# Copy SSL key
file node['chatsecure_ssl']['ssl_dir'] + node['chatsecure_ssl']['ssl_key'] do
  content ssl_key
  user user
  group group
  mode "770"
  action :create
end