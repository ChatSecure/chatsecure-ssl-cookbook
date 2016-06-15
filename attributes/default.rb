#
# Cookbook Name:: chatsecure_ssl
# Attributes:: default
#
# Copyright 2014, ChatSecure
#
# MIT License
#

default['chatsecure_ssl']['ssl_databag_name']       = "ssl"
default['chatsecure_ssl']['ssl_databag_certs_item']     = "certs"
default['chatsecure_ssl']['ssl_databag_keys_item'] = "keys"
default['chatsecure_ssl']['ssl_dir']                = node['chatsecure_rubdub']['tls_dir']
default['chatsecure_ssl']['ssl_cert']           = node['chatsecure_rubdub']['tls_cert_path']
default['chatsecure_ssl']['ssl_key']            = node['chatsecure_rubdub']['tls_key_path']
default['chatsecure_ssl']['ssl_user']            = node['chatsecure_rubdub']['service_user']
default['chatsecure_ssl']['ssl_group']            = node['chatsecure_rubdub']['service_group_id']
